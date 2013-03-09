.class Lcom/android/mms/AttachImage;
.super Landroid/app/Activity;
.source "AttachImage.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "AttachImage"

.field private static final TAG_COMPOSER:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/AttachImage;->finish()V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 49
    const-string v1, "contents"

    new-array v2, v4, [Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/mms/AttachImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50
    const-string v1, "types"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "image/*"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0, v4}, Lcom/android/mms/AttachImage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    return-void
.end method
