.class Lcom/android/settings/ISActivity$6;
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
    .line 232
    iput-object p1, p0, Lcom/android/settings/ISActivity$6;->this$0:Lcom/android/settings/ISActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 234
    const-string v0, "NetSharing_ISActivity"

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/ISActivity$6;->this$0:Lcom/android/settings/ISActivity;

    iget-object v1, v1, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/ISActivity$6;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v0}, Lcom/android/settings/ISActivity;->finish()V

    .line 237
    return-void
.end method
