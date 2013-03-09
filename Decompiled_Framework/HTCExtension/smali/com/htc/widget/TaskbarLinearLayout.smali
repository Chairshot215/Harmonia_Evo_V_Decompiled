.class public Lcom/htc/widget/TaskbarLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TaskbarLinearLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskbarLinearLayout"

.field private static mNewOrientation:I

.field private static mOldOrientation:I


# instance fields
.field button1:Landroid/widget/Button;

.field button2:Landroid/widget/Button;

.field button3:Landroid/widget/Button;

.field private cmd_bar_btn_1:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/htc/widget/TaskbarLinearLayout;->mOldOrientation:I

    sput v0, Lcom/htc/widget/TaskbarLinearLayout;->mNewOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const/16 v6, 0x8

    invoke-virtual {p0}, Lcom/htc/widget/TaskbarLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    sput v3, Lcom/htc/widget/TaskbarLinearLayout;->mNewOrientation:I

    sget v3, Lcom/htc/widget/TaskbarLinearLayout;->mOldOrientation:I

    sget v4, Lcom/htc/widget/TaskbarLinearLayout;->mNewOrientation:I

    if-eq v3, v4, :cond_0

    sget v3, Lcom/htc/widget/TaskbarLinearLayout;->mNewOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    const-string v3, "TaskbarLinearLayout"

    const-string v4, "enter port"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/TaskbarLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    const-string v3, "TaskbarLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd_bar_1->port-width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/TaskbarLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    const-string v3, "TaskbarLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "port-width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_5

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_6

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    sget v3, Lcom/htc/widget/TaskbarLinearLayout;->mNewOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "TaskbarLinearLayout"

    const-string v4, "enter land"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/htc/widget/TaskbarLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    const-string v3, "TaskbarLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd_bar_1->land-width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    :try_start_2
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_9

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_9

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_b

    :cond_9
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_a

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_a

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/htc/widget/TaskbarLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    const-string v3, "TaskbarLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "land-width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_c

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_d

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public onFinishInflate()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x2020001

    invoke-virtual {p0, v0}, Lcom/htc/widget/TaskbarLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    return-void
.end method
