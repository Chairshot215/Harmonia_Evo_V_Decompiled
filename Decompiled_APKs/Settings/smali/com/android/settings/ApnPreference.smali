.class public Lcom/android/settings/ApnPreference;
.super Lcom/htc/preference/HtcPreference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ApnPreference"

.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mApnRadioBtn:Landroid/widget/RadioButton;

.field private mEditable:Z

.field private mIscdma:Z

.field private mProtectFromCheckedChange:Z

.field private mProtectedFeature:Z

.field private mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

.field private mSelectable:Z

.field private mTextLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 98
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/android/settings/ApnPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnPreference$1;-><init>(Lcom/android/settings/ApnPreference;)V

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 94
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Lcom/android/settings/ApnPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnPreference$1;-><init>(Lcom/android/settings/ApnPreference;)V

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 86
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Lcom/android/settings/ApnPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnPreference$1;-><init>(Lcom/android/settings/ApnPreference;)V

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 77
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 78
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    const v2, 0x7f04000a

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnPreference;->setLayoutResource(I)V

    .line 156
    const/4 v0, 0x1

    .line 157
    .local v0, mEditable:Z
    const/4 v1, 0x1

    .line 158
    .local v1, mSelectable:Z
    iput-boolean v3, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    .line 159
    iput-boolean v3, p0, Lcom/android/settings/ApnPreference;->mProtectedFeature:Z

    .line 160
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd1

    if-ne v2, v3, :cond_0

    .line 161
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->mProtectedFeature:Z

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public getEditable()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    return v0
.end method

.method public getSelectable()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x1010002

    .line 104
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 106
    .local v5, view:Landroid/view/View;
    const v7, 0x1010001

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 107
    .local v2, lock:Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    if-nez v7, :cond_0

    .line 108
    const v7, 0x108002f

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :cond_0
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 112
    .local v6, widget:Landroid/view/View;
    if-eqz v6, :cond_2

    instance-of v7, v6, Landroid/widget/RadioButton;

    if-eqz v7, :cond_2

    .line 113
    iget-boolean v7, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v7, :cond_5

    move-object v3, v6

    .line 114
    check-cast v3, Landroid/widget/RadioButton;

    .line 115
    .local v3, rb:Landroid/widget/RadioButton;
    invoke-virtual {v3, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 118
    .local v1, isChecked:Z
    if-eqz v1, :cond_1

    .line 119
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 123
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 124
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 125
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 131
    .end local v1           #isChecked:Z
    .end local v3           #rb:Landroid/widget/RadioButton;
    :cond_2
    :goto_0
    const/high16 v7, 0x101

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 132
    .local v4, textLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "list_selector_background"

    const v9, 0x1080062

    invoke-static {v7, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    if-eqz v4, :cond_3

    instance-of v7, v4, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_3

    .line 136
    check-cast v4, Landroid/widget/LinearLayout;

    .end local v4           #textLayout:Landroid/view/View;
    iput-object v4, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Landroid/widget/LinearLayout;

    .line 137
    iget-object v7, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v7, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 141
    :cond_3
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, apn_radiobutton:Landroid/view/View;
    if-eqz v0, :cond_4

    instance-of v7, v0, Landroid/widget/RadioButton;

    if-eqz v7, :cond_4

    .line 143
    check-cast v0, Landroid/widget/RadioButton;

    .end local v0           #apn_radiobutton:Landroid/view/View;
    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mApnRadioBtn:Landroid/widget/RadioButton;

    .line 145
    iget-object v7, p0, Lcom/android/settings/ApnPreference;->mApnRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "btn_radio"

    const v10, 0x1080009

    invoke-static {v8, v9, v10}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 148
    iget-object v7, p0, Lcom/android/settings/ApnPreference;->mApnRadioBtn:Landroid/widget/RadioButton;

    iget-object v8, p0, Lcom/android/settings/ApnPreference;->mRadioBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    :cond_4
    return-object v5

    .line 127
    :cond_5
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 178
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 183
    :cond_0
    if-eqz p2, :cond_2

    .line 184
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 185
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 187
    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 189
    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_2
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 192
    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 201
    if-eqz p1, :cond_0

    const/high16 v5, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 202
    check-cast p1, Landroid/widget/LinearLayout;

    .end local p1
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->dispatchSetSelected(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 204
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 205
    iget-boolean v5, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    if-eqz v5, :cond_1

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 206
    .local v3, uri:Landroid/net/Uri;
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/ApnPreference;->mProtectedFeature:Z

    if-eqz v5, :cond_3

    .line 207
    iget-boolean v5, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    if-eqz v5, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 209
    .local v2, pos:I
    int-to-long v5, v2

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 210
    .local v4, url:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 223
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #pos:I
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #url:Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 205
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 212
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_2
    const v5, 0x7f0c02e2

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 215
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 216
    .restart local v2       #pos:I
    int-to-long v5, v2

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 217
    .restart local v4       #url:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "editable"

    iget-boolean v6, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 197
    check-cast p1, Landroid/widget/LinearLayout;

    .end local p1
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->dispatchSetSelected(Z)V

    .line 198
    return-void
.end method

.method public setCdma()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIscdma:Z

    .line 243
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 170
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setEditable(Z)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 227
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 235
    return-void
.end method

.method setTextViewsFocusable(Z)V
    .locals 1
    .parameter "layoutFocus"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/settings/ApnPreference;->mTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 249
    :cond_0
    return-void
.end method
