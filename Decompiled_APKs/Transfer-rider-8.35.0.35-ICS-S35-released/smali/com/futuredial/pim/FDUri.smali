.class public Lcom/futuredial/pim/FDUri;
.super Ljava/lang/Object;
.source "FDUri.java"


# static fields
.field public static final URI_CALENDAR:I = 0x1

.field public static final URI_CONTACTS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 36
    const-string v0, "account_name"

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "_sync_account"

    goto :goto_0
.end method

.method public static getAccountType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 27
    const-string v0, "account_type"

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "_sync_account_type"

    goto :goto_0
.end method

.method public static getCalAccesslevel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 66
    const-string v0, "calendar_access_level"

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "access_level"

    goto :goto_0
.end method

.method public static getCalColor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 73
    const-string v0, "calendar_color"

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "color"

    goto :goto_0
.end method

.method public static getCalDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 52
    const-string v0, "calendar_displayName"

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "displayName"

    goto :goto_0
.end method

.method public static getCalVISIBILITY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 45
    const-string v0, "accessLevel"

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "visibility"

    goto :goto_0
.end method

.method public static getDirty()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 87
    const-string v0, "dirty"

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "_sync_dirty"

    goto :goto_0
.end method

.method public static getTimezone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 80
    const-string v0, "calendar_timezone"

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "timezone"

    goto :goto_0
.end method

.method public static getUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "type"

    .prologue
    .line 12
    packed-switch p0, :pswitch_data_0

    .line 22
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 16
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 17
    const-string v0, "content://com.android.calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "content://calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 12
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getVisible()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 59
    const-string v0, "visible"

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "selected"

    goto :goto_0
.end method
