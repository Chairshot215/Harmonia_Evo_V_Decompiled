.class Lcom/android/settings/ISActivity$8;
.super Ljava/lang/Object;
.source "ISActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ISActivity;->showConfigDialog()V
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
    .line 252
    iput-object p1, p0, Lcom/android/settings/ISActivity$8;->this$0:Lcom/android/settings/ISActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/settings/ISActivity$8;->this$0:Lcom/android/settings/ISActivity;

    iget-object v0, v0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/ISActivity$8;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v0}, Lcom/android/settings/ISActivity;->finish()V

    .line 257
    sput-boolean v1, Lcom/android/settings/ISActivity;->isShowing:Z

    .line 258
    return-void
.end method
