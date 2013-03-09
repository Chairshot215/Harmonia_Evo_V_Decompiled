.class Lcom/android/dmportread/DMPortActivity$3;
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
    .line 145
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$3;->this$0:Lcom/android/dmportread/DMPortActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x1

    const/16 v2, 0xc0

    const/16 v1, 0x80

    .line 147
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$3;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mServiceOn:Z
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$100(Lcom/android/dmportread/DMPortActivity;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$3;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$500(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v4, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 150
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$3;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$400(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 151
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$3;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mNoBut:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$500(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$3;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$400(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    return-void
.end method
