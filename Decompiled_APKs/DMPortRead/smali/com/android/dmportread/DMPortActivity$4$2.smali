.class Lcom/android/dmportread/DMPortActivity$4$2;
.super Ljava/lang/Object;
.source "DMPortActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dmportread/DMPortActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dmportread/DMPortActivity$4;

.field final synthetic val$aEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMPortActivity$4;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$4$2;->this$1:Lcom/android/dmportread/DMPortActivity$4;

    iput-object p2, p0, Lcom/android/dmportread/DMPortActivity$4$2;->val$aEditText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 215
    new-instance v0, Lcom/android/dmportread/DMPortActivity$4$2$1;

    invoke-direct {v0, p0}, Lcom/android/dmportread/DMPortActivity$4$2$1;-><init>(Lcom/android/dmportread/DMPortActivity$4$2;)V

    .line 283
    .local v0, aThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 284
    return-void
.end method
