.class Lcom/android/dmportread/DMPortActivity$7;
.super Ljava/lang/Object;
.source "DMPortActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dmportread/DMPortActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMPortActivity;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMPortActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$7;->this$0:Lcom/android/dmportread/DMPortActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$7;->this$0:Lcom/android/dmportread/DMPortActivity;

    invoke-virtual {v0}, Lcom/android/dmportread/DMPortActivity;->finish()V

    .line 402
    return-void
.end method
