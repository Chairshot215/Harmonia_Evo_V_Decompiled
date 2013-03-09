.class public Lcom/htc/preference/HtcRingtonePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcRingtonePreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RingtonePreference"


# instance fields
.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    const v0, 0x1010093

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    sget-object v1, Lcom/android/internal/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mRingtoneType:I

    .line 67
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowDefault:Z

    .line 69
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowSilent:Z

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/htc/preference/HtcRingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 265
    iget v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mRequestCode:I

    if-ne p1, v1, :cond_2

    .line 267
    if-eqz p3, :cond_0

    .line 268
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 270
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcRingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 275
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x1

    .line 278
    :goto_1
    return v1

    .line 270
    .restart local v0       #uri:Landroid/net/Uri;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 278
    .end local v0           #uri:Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 259
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceManager;->registerOnActivityResultListener(Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;)V

    .line 260
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceManager;->getNextRequestCode()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcRingtonePreference;->mRequestCode:I

    .line 261
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getFragment()Lcom/htc/preference/HtcPreferenceFragment;

    move-result-object v1

    .line 174
    .local v1, owningFragment:Lcom/htc/preference/HtcPreferenceFragment;
    if-eqz v1, :cond_0

    .line 175
    iget v2, p0, Lcom/htc/preference/HtcRingtonePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Lcom/htc/preference/HtcPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/htc/preference/HtcRingtonePreference;->mRequestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "parent"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 84
    .local v4, target:Landroid/view/View;
    if-eqz v4, :cond_0

    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->getWidgetLayoutResource()I

    move-result v6

    .line 87
    .local v6, widgetId:I
    if-ltz v6, :cond_0

    .line 88
    const/4 v5, 0x0

    .local v5, widget:Landroid/view/View;
    const/4 v2, 0x0

    .line 89
    .local v2, imgView:Landroid/view/View;
    const v7, 0x1020018

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 90
    if-eqz v5, :cond_0

    instance-of v7, v5, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    move-object v7, v5

    .line 91
    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 92
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    move-object v7, v5

    .line 93
    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_1

    instance-of v7, v2, Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "common_more_view"

    const v9, 0x2080065

    invoke-static {v7, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .local v3, resId:I
    move-object v7, v2

    .line 96
    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    check-cast v2, Landroid/widget/ImageView;

    .end local v2           #imgView:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 105
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #resId:I
    .end local v5           #widget:Landroid/view/View;
    .end local v6           #widgetId:I
    :cond_0
    return-object v4

    .line 92
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #imgView:Landroid/view/View;
    .restart local v5       #widget:Landroid/view/View;
    .restart local v6       #widgetId:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 231
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "ringtonePickerIntent"

    .prologue
    .line 190
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    iget-boolean v0, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {p0}, Lcom/htc/preference/HtcRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 199
    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/htc/preference/HtcRingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcRingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, uriString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1
    .parameter "ringtoneUri"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcRingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 213
    return-void

    .line 212
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restorePersistedValue"
    .parameter "defaultValueObj"

    .prologue
    .line 236
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 245
    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setRingtoneType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 125
    iput p1, p0, Lcom/htc/preference/HtcRingtonePreference;->mRingtoneType:I

    .line 126
    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0
    .parameter "showDefault"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowDefault:Z

    .line 146
    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0
    .parameter "showSilent"

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/htc/preference/HtcRingtonePreference;->mShowSilent:Z

    .line 165
    return-void
.end method
