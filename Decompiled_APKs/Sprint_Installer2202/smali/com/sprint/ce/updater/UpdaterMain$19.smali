.class Lcom/sprint/ce/updater/UpdaterMain$19;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain;->processEntryComplete(Lcom/sprint/ce/updater/UpdaterMain$InstallResult;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterMain;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$19;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1120
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$19;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v4, 0x7f05001d

    const/4 v5, -0x1

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V
    invoke-static {v3, v4, v5, v6, v6}, Lcom/sprint/ce/updater/UpdaterMain;->access$1(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    .line 1121
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$19;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v3, v3, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1122
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$19;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v4, 0x7f070005

    invoke-virtual {v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1123
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$19;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v4, 0x7f070007

    invoke-virtual {v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1126
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1128
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$19;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1129
    .local v0, openButton:Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1130
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$19;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v3, v3, Lcom/sprint/ce/updater/UpdaterMain;->mOpenOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1132
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$19;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1133
    .local v1, returnButton:Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1134
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$19;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v3, v3, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain$19;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    const-string v4, "completed"

    iput-object v4, v3, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    .line 1137
    return-void
.end method
