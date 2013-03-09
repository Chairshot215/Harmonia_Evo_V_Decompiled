.class Lcom/android/settings/ISActivity$7;
.super Ljava/lang/Object;
.source "ISActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ISActivity;->showMobileTypeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ISActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/ISActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/settings/ISActivity$7;->this$0:Lcom/android/settings/ISActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "type_choose"

    .prologue
    .line 215
    const-string v0, "NetSharing_ISActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Confirm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/settings/ISActivity$7;->this$0:Lcom/android/settings/ISActivity;

    iget-object v0, v0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/NetSharingTypeEnabler;->Set_Connection_Type(Landroid/content/Context;I)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/ISActivity$7;->this$0:Lcom/android/settings/ISActivity;

    iget-object v0, v0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/NetSharingTypeEnabler;->checkInterface(Landroid/content/Context;)V

    .line 219
    const-string v0, "NetSharing_ISActivity"

    const-string v1, "setNetSharing(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/ISActivity$7;->this$0:Lcom/android/settings/ISActivity;

    iget-object v1, v1, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 222
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/ISActivity$7$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ISActivity$7$1;-><init>(Lcom/android/settings/ISActivity$7;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 229
    iget-object v0, p0, Lcom/android/settings/ISActivity$7;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v0}, Lcom/android/settings/ISActivity;->finish()V

    .line 231
    return-void
.end method
