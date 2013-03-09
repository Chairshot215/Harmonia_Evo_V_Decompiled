.class public Lcom/android/htccontacts/ContactPresenceIconUtil;
.super Ljava/lang/Object;
.source "ContactPresenceIconUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HtcGetPresenceIconRes(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/htc/provider/HtcContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    return v0
.end method

.method public static getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "status"

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
