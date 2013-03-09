.class Lcom/htc/widget/Title5$1;
.super Ljava/lang/Object;
.source "Title5.java"

# interfaces
.implements Lcom/htc/widget/DropDownList$OnDropDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/Title5;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/Title5;


# direct methods
.method constructor <init>(Lcom/htc/widget/Title5;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/htc/widget/Title5$1;->this$0:Lcom/htc/widget/Title5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 7

    .prologue
    .line 160
    iget-object v3, p0, Lcom/htc/widget/Title5$1;->this$0:Lcom/htc/widget/Title5;

    iget-object v3, v3, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v4, "title_5_img_pulldown"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 161
    .local v2, pulldownId:I
    const/4 v1, 0x0

    .line 162
    .local v1, pulldown:Landroid/widget/ImageButton;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/htc/widget/Title5$1;->this$0:Lcom/htc/widget/Title5;

    invoke-virtual {v3, v2}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #pulldown:Landroid/widget/ImageButton;
    check-cast v1, Landroid/widget/ImageButton;

    .line 163
    .restart local v1       #pulldown:Landroid/widget/ImageButton;
    :cond_0
    if-eqz v1, :cond_1

    .line 164
    iget-object v3, p0, Lcom/htc/widget/Title5$1;->this$0:Lcom/htc/widget/Title5;

    invoke-virtual {v3}, Lcom/htc/widget/Title5;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_icon_titlebar_pulldown"

    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 165
    .local v0, imgId:I
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 167
    .end local v0           #imgId:I
    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 7

    .prologue
    .line 170
    iget-object v3, p0, Lcom/htc/widget/Title5$1;->this$0:Lcom/htc/widget/Title5;

    iget-object v3, v3, Lcom/htc/widget/Title5;->mContext:Landroid/content/Context;

    const-string v4, "title_5_img_pulldown"

    invoke-static {v3, v4}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 171
    .local v2, pulldownId:I
    const/4 v1, 0x0

    .line 172
    .local v1, pulldown:Landroid/widget/ImageButton;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/htc/widget/Title5$1;->this$0:Lcom/htc/widget/Title5;

    invoke-virtual {v3, v2}, Lcom/htc/widget/Title5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #pulldown:Landroid/widget/ImageButton;
    check-cast v1, Landroid/widget/ImageButton;

    .line 173
    .restart local v1       #pulldown:Landroid/widget/ImageButton;
    :cond_0
    if-eqz v1, :cond_1

    .line 174
    iget-object v3, p0, Lcom/htc/widget/Title5$1;->this$0:Lcom/htc/widget/Title5;

    invoke-virtual {v3}, Lcom/htc/widget/Title5;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_icon_titlebar_pulldown_open"

    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 175
    .local v0, imgId:I
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 177
    .end local v0           #imgId:I
    :cond_1
    return-void
.end method
