.class public Lcom/m0narx/tweaks/rosie;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "rosie.java"


# static fields
.field private static final BG_ROSIE:I = 0x2

.field private static final DIALOG_APPDRAWER_COLUMS:I = 0x65


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field private Title:Lcom/htc/widget/HeaderBarText;

.field private Title_Button:Lcom/htc/widget/HeaderBarImage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method private CheckButtonState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 283
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_sense_restart:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Title:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 286
    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Title:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method private InstallBg(I)V
    .locals 3
    .parameter "BgVal"

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Lcom/m0narx/tweaks/rosie;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    return-void
.end method

.method private OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6
    .parameter "name"
    .parameter "TweakName"
    .parameter "Default"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 223
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 224
    .local v1, Value:Ljava/lang/Integer;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 226
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 227
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 228
    :cond_1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/rosie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 229
    .local v0, Chk:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 230
    iget-object v2, p0, Lcom/m0narx/tweaks/rosie;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 231
    return-void
.end method

.method private OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter "name"
    .parameter "TweakName"
    .parameter "Vtype"
    .parameter "Default"

    .prologue
    .line 211
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 212
    :cond_0
    const-string v0, "list"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/rosie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 219
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/rosie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 220
    return-void

    .line 214
    :cond_2
    const-string v0, "seekbar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/rosie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSeekBarPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 216
    :cond_3
    const-string v0, "color"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/rosie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/colorpicker/ColorPickerPreference;->setAlphaSliderEnabled(Z)V

    goto :goto_0
.end method

.method private OnClickListener(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/rosie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 208
    return-void
.end method

.method private SetupHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 252
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/rosie;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    iput-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title:Lcom/htc/widget/HeaderBarText;

    .line 253
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title:Lcom/htc/widget/HeaderBarText;

    sget-object v2, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 258
    .local v0, TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 259
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/rosie;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    iput-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    .line 262
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 263
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 264
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 265
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f05001b

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 266
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    check-cast v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 269
    .restart local v0       #TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 270
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    new-instance v2, Lcom/m0narx/tweaks/rosie$5;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/rosie$5;-><init>(Lcom/m0narx/tweaks/rosie;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-void
.end method

.method private SetupRoiseNavBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, Mode:I
    const/4 v1, 0x0

    .line 236
    .local v1, NewMode:I
    const/4 v3, 0x0

    .line 237
    .local v3, isTransp:I
    const/4 v2, 0x0

    .line 238
    .local v2, isNoLabel:I
    iget-object v4, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_rosie_navbar_hidelabel"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 239
    iget-object v4, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_rosie_navbar_transp"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 240
    iget-object v4, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_rosie_navbar_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 241
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 242
    :cond_0
    if-ne v2, v6, :cond_1

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 243
    :cond_1
    if-nez v2, :cond_2

    if-ne v3, v6, :cond_2

    const/4 v1, 0x2

    .line 244
    :cond_2
    if-ne v2, v6, :cond_3

    if-ne v3, v6, :cond_3

    const/4 v1, 0x3

    .line 245
    :cond_3
    if-eq v0, v1, :cond_4

    .line 246
    iget-object v4, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v5, "tweaks_rosie_navbar_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    :cond_4
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/rosie;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/m0narx/tweaks/rosie;->CheckButtonState()V

    return-void
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/rosie;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/m0narx/tweaks/rosie;->SetupRoiseNavBar()V

    return-void
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/rosie;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/rosie;->InstallBg(I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 164
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v12, ""

    .line 166
    .local v12, TweakName:Ljava/lang/String;
    const-string v10, ""

    .line 167
    .local v10, PrefName:Ljava/lang/String;
    const-string v8, ""

    .line 168
    .local v8, FileName:Ljava/lang/String;
    const-string v9, ""

    .line 169
    .local v9, FileSource:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 170
    .local v2, SourceURI:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 176
    :goto_1
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 178
    const-string v4, "_data"

    aput-object v4, v3, v1

    .line 180
    .local v3, proj:[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/m0narx/tweaks/rosie;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 181
    .local v14, cursor:Landroid/database/Cursor;
    const-string v1, "_data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 182
    .local v13, cindex:I
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 183
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 185
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v11, Source:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/rosie;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/tmp.png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v7, Dest:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 190
    :cond_2
    :try_start_0
    invoke-static {v11, v7}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "cp -f "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/rosie;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/tmp.png /data/system/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";chmod 666 /data/system/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    invoke-static {v1, v12, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/m0narx/tweaks/rosie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 172
    .end local v3           #proj:[Ljava/lang/String;
    .end local v7           #Dest:Ljava/io/File;
    .end local v11           #Source:Ljava/io/File;
    .end local v13           #cindex:I
    .end local v14           #cursor:Landroid/database/Cursor;
    :pswitch_0
    const-string v12, "tweaks_rosie_customimage"

    .line 173
    const-string v10, "rosie_custombg"

    .line 174
    const-string v8, "background_appdrawer.png"

    goto/16 :goto_1

    .line 191
    .restart local v3       #proj:[Ljava/lang/String;
    .restart local v7       #Dest:Ljava/io/File;
    .restart local v11       #Source:Ljava/io/File;
    .restart local v13       #cindex:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .local v15, e:Ljava/io/IOException;
    goto/16 :goto_0

    .line 195
    .end local v15           #e:Ljava/io/IOException;
    :catch_1
    move-exception v15

    .restart local v15       #e:Ljava/io/IOException;
    goto/16 :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/rosie;->addPreferencesFromResource(I)V

    .line 88
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/rosie;->setContentView(I)V

    .line 89
    invoke-direct {p0}, Lcom/m0narx/tweaks/rosie;->SetupHeader()V

    .line 90
    invoke-direct {p0}, Lcom/m0narx/tweaks/rosie;->CheckButtonState()V

    .line 91
    invoke-virtual {p0}, Lcom/m0narx/tweaks/rosie;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    .line 92
    new-instance v0, Lcom/m0narx/tweaks/rosie$3;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/rosie$3;-><init>(Lcom/m0narx/tweaks/rosie;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/rosie;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    .line 105
    new-instance v0, Lcom/m0narx/tweaks/rosie$4;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/rosie$4;-><init>(Lcom/m0narx/tweaks/rosie;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/rosie;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 146
    const-string v0, "pref_rosie_smooth"

    const-string v1, "tweaks_rosie_smooth"

    const-string v2, "list"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/rosie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v0, "enable_unlock_animation"

    const-string v1, "tweaks_rosie_skip_unlock_animation"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/rosie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 148
    const-string v0, "hide_lbl"

    const-string v1, "tweaks_rosie_navbar_hidelabel"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/rosie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 149
    const-string v0, "nav_trans"

    const-string v1, "tweaks_rosie_navbar_transp"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/rosie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 150
    const-string v0, "appdrawer_columns"

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/rosie;->OnClickListener(Ljava/lang/String;)V

    .line 151
    const-string v0, "paginated_apps"

    const-string v1, "tweaks_rosie_use_pages"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/rosie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 152
    const-string v0, "rosie_bgcolor_pref"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/rosie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v0, "rosie_custombg"

    const-string v1, "tweaks_rosie_customimage"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/rosie;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 154
    invoke-direct {p0}, Lcom/m0narx/tweaks/rosie;->SetupRoiseNavBar()V

    .line 155
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 80
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 47
    :pswitch_0
    iget-object v3, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_rosie_app_drawer_columns"

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 48
    .local v0, Columns:I
    new-instance v1, Lcom/htc/widget/HtcNumberPicker;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcNumberPicker;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, NPicker:Lcom/htc/widget/HtcNumberPicker;
    const/4 v3, 0x5

    invoke-virtual {v1, v6, v3}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcNumberPicker;->setCenter(I)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 52
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 53
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcNumberPicker;->setShowNumberDigits(I)V

    .line 54
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 55
    const v3, 0x7f09000b

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcNumberPicker;->setId(I)V

    .line 56
    move-object v2, v1

    .line 57
    .local v2, fNumberPickerView:Landroid/view/View;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    const/high16 v4, 0x7f02

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 59
    const v4, 0x7f050071

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 60
    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 62
    const v4, 0x7f05007c

    .line 63
    new-instance v5, Lcom/m0narx/tweaks/rosie$1;

    invoke-direct {v5, p0, v2}, Lcom/m0narx/tweaks/rosie$1;-><init>(Lcom/m0narx/tweaks/rosie;Landroid/view/View;)V

    .line 62
    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 72
    const v4, 0x7f05002e

    .line 73
    new-instance v5, Lcom/m0narx/tweaks/rosie$2;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/rosie$2;-><init>(Lcom/m0narx/tweaks/rosie;)V

    .line 72
    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 203
    invoke-direct {p0}, Lcom/m0narx/tweaks/rosie;->CheckButtonState()V

    .line 204
    return-void
.end method
