.class public Lcom/m0narx/tweaks/systemui;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "systemui.java"


# static fields
.field private static final BG_RECENT:I = 0x0

.field private static final BG_STATUSBAR:I = 0x1

.field private static final DIALOG_ICONS:I = 0x1

.field private static final ICON_ALARM:I = 0x0

.field private static final ICON_BATTERY:I = 0x1

.field private static final ICON_BLUETOOTH:I = 0x6

.field private static final ICON_GPS:I = 0x2

.field private static final ICON_HEADPHONES:I = 0x3

.field private static final ICON_SOUND:I = 0x4

.field private static final ICON_WIFI:I = 0x5


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
    .line 33
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method private CheckButtonState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 272
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_systemui_restart:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->Title:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 275
    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->Title:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method private InstallBg(I)V
    .locals 3
    .parameter "BgVal"

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Lcom/m0narx/tweaks/systemui;->startActivityForResult(Landroid/content/Intent;I)V

    .line 219
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

    .line 294
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 295
    .local v1, Value:Ljava/lang/Integer;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 297
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 298
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 299
    :cond_1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 300
    .local v0, Chk:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 301
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 302
    return-void
.end method

.method private OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter "name"
    .parameter "TweakName"
    .parameter "Vtype"
    .parameter "Default"

    .prologue
    .line 282
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 283
    :cond_0
    const-string v0, "list"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 290
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 291
    return-void

    .line 285
    :cond_2
    const-string v0, "seekbar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcSeekBarPreference;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 287
    :cond_3
    const-string v0, "color"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

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
    .line 305
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 306
    return-void
.end method

.method private SetupHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 309
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/systemui;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    iput-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title:Lcom/htc/widget/HeaderBarText;

    .line 310
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title:Lcom/htc/widget/HeaderBarText;

    sget-object v2, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 315
    .local v0, TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 316
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/systemui;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    iput-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    .line 319
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 320
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 321
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 322
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f050019

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 323
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    new-instance v2, Lcom/m0narx/tweaks/systemui$5;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/systemui$5;-><init>(Lcom/m0narx/tweaks/systemui;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    check-cast v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 334
    .restart local v0       #TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 335
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/systemui;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/m0narx/tweaks/systemui;->CheckButtonState()V

    return-void
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/systemui;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/systemui;->InstallBg(I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 223
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string v12, ""

    .line 225
    .local v12, TweakName:Ljava/lang/String;
    const-string v10, ""

    .line 226
    .local v10, PrefName:Ljava/lang/String;
    const-string v8, ""

    .line 227
    .local v8, FileName:Ljava/lang/String;
    const-string v9, ""

    .line 228
    .local v9, FileSource:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 229
    .local v2, SourceURI:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_1
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 242
    const-string v4, "_data"

    aput-object v4, v3, v1

    .line 244
    .local v3, proj:[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/m0narx/tweaks/systemui;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 245
    .local v14, cursor:Landroid/database/Cursor;
    const-string v1, "_data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 246
    .local v13, cindex:I
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 247
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 249
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v11, Source:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/systemui;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/tmp.png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v7, Dest:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 254
    :cond_2
    :try_start_0
    invoke-static {v11, v7}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "cp -f "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/m0narx/tweaks/systemui;->getFilesDir()Ljava/io/File;

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

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    invoke-static {v1, v12, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 231
    .end local v3           #proj:[Ljava/lang/String;
    .end local v7           #Dest:Ljava/io/File;
    .end local v11           #Source:Ljava/io/File;
    .end local v13           #cindex:I
    .end local v14           #cursor:Landroid/database/Cursor;
    :pswitch_0
    const-string v12, "tweaks_statusbar_customimage"

    .line 232
    const-string v10, "statusbar_custombg"

    .line 233
    const-string v8, "background_pulldown.png"

    .line 234
    goto/16 :goto_1

    .line 236
    :pswitch_1
    const-string v12, "tweaks_recentapps_customimage"

    .line 237
    const-string v10, "recentapps_custombg"

    .line 238
    const-string v8, "background_recentapps.png"

    goto/16 :goto_1

    .line 255
    .restart local v3       #proj:[Ljava/lang/String;
    .restart local v7       #Dest:Ljava/io/File;
    .restart local v11       #Source:Ljava/io/File;
    .restart local v13       #cindex:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .local v15, e:Ljava/io/IOException;
    goto/16 :goto_0

    .line 259
    .end local v15           #e:Ljava/io/IOException;
    :catch_1
    move-exception v15

    .restart local v15       #e:Ljava/io/IOException;
    goto/16 :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/systemui;->addPreferencesFromResource(I)V

    .line 126
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/systemui;->setContentView(I)V

    .line 127
    invoke-direct {p0}, Lcom/m0narx/tweaks/systemui;->SetupHeader()V

    .line 128
    invoke-direct {p0}, Lcom/m0narx/tweaks/systemui;->CheckButtonState()V

    .line 130
    invoke-virtual {p0}, Lcom/m0narx/tweaks/systemui;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    .line 131
    new-instance v0, Lcom/m0narx/tweaks/systemui$3;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/systemui$3;-><init>(Lcom/m0narx/tweaks/systemui;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 180
    new-instance v0, Lcom/m0narx/tweaks/systemui$4;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/systemui$4;-><init>(Lcom/m0narx/tweaks/systemui;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    .line 195
    const-string v0, "super_quick_settings"

    const-string v1, "tweaks_auto_quick_settings"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 196
    const-string v0, "wifi_config"

    const-string v1, "tweaks_wifi_config"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 198
    const-string v0, "hide_noti"

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/systemui;->OnClickListener(Ljava/lang/String;)V

    .line 199
    const-string v0, "h_icon_replace"

    const-string v1, "tweaks_statusbar_h_icon"

    const-string v2, "list"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v0, "pref_statusbar_transparency"

    const-string v1, "tweaks_statusbar_transparency"

    const-string v2, "seekbar"

    const/16 v3, 0xfe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v0, "hide_date"

    const-string v1, "tweaks_statusbar_hide_date"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 203
    const-string v0, "statusbar_bgcolor_pref"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v0, "statusbar_custombg"

    const-string v1, "tweaks_statusbar_customimage"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 205
    const-string v0, "recentapps_style"

    const-string v1, "tweaks_recentapps_style"

    const-string v2, "list"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v0, "recentapps_bgcolor"

    const-string v1, ""

    const-string v2, "color"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v0, "recentapps_custombg"

    const-string v1, "tweaks_recentapps_customimage"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 208
    const-string v0, "recentapps_hideicons"

    const-string v1, "tweaks_recentapps_hideicons"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 210
    const-string v0, "cm_brightness_control"

    const-string v1, "tweaks_cm_brightness_control"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/m0narx/tweaks/systemui;->OnChangeListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 213
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 54
    packed-switch p1, :pswitch_data_0

    .line 119
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 56
    :pswitch_0
    const/4 v0, 0x0

    check-cast v0, [Z

    .line 57
    .local v0, SWIcons:[Z
    const/4 v1, 0x7

    new-array v0, v1, [Z

    .line 58
    aput-boolean v4, v0, v4

    .line 59
    aput-boolean v4, v0, v3

    .line 60
    aput-boolean v4, v0, v5

    .line 61
    aput-boolean v4, v0, v6

    .line 62
    aput-boolean v4, v0, v7

    .line 63
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 64
    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 65
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_show_alarm_icon"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v3, v0, v4

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_show_battery"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    aput-boolean v3, v0, v3

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_show_gps_icon"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    aput-boolean v3, v0, v5

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_show_headset_icon"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    aput-boolean v3, v0, v6

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_show_volume_icons"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    aput-boolean v3, v0, v7

    .line 70
    :cond_4
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_show_wifi_icon"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 71
    :cond_5
    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_show_bluetooth_icon"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 73
    :cond_6
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 75
    const v2, 0x7f050059

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 76
    const v2, 0x7f060019

    .line 77
    new-instance v3, Lcom/m0narx/tweaks/systemui$1;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/systemui$1;-><init>(Lcom/m0narx/tweaks/systemui;)V

    .line 76
    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 111
    const v2, 0x7f05007c

    .line 112
    new-instance v3, Lcom/m0narx/tweaks/systemui$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/systemui$2;-><init>(Lcom/m0narx/tweaks/systemui;)V

    .line 111
    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 266
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 267
    invoke-direct {p0}, Lcom/m0narx/tweaks/systemui;->CheckButtonState()V

    .line 268
    return-void
.end method
