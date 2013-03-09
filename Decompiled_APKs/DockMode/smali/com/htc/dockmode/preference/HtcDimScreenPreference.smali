.class public final Lcom/htc/dockmode/preference/HtcDimScreenPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcDimScreenPreference.java"


# static fields
.field private static final DEFAULT_DESKDOCK_DIM_SCREEN_VALUE:I = 0xa

.field private static final DESKDOCK_DIM_SCREEN:Ljava/lang/String; = "deskdock_dim_screen"

.field public static final KEY:Ljava/lang/String; = "DIM_SCREEN"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->initialize(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->initialize(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v3, 0x7f080036

    .line 55
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 56
    const-string v2, "DIM_SCREEN"

    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->setKey(Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->setTitle(I)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->setDialogTitle(I)V

    .line 61
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->setPersistent(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f050004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 65
    const v2, 0x7f050005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "deskdock_dim_screen"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 70
    .local v1, value:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->setValue(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onDialogClosed(Z)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_dim_screen"

    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->setValue(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    return-void
.end method
