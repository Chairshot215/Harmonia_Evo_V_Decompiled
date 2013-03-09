.class Lcom/android/settings/ISActivity$7$1;
.super Ljava/lang/Object;
.source "ISActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ISActivity$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ISActivity$7;


# direct methods
.method constructor <init>(Lcom/android/settings/ISActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings/ISActivity$7$1;->this$1:Lcom/android/settings/ISActivity$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 224
    iget-object v0, p0, Lcom/android/settings/ISActivity$7$1;->this$1:Lcom/android/settings/ISActivity$7;

    iget-object v0, v0, Lcom/android/settings/ISActivity$7;->this$0:Lcom/android/settings/ISActivity;

    iget-object v0, v0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    sput-boolean v1, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 226
    :cond_0
    return-void
.end method
