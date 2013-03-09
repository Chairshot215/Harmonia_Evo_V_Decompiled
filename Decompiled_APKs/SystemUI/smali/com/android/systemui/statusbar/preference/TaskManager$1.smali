.class Lcom/android/systemui/statusbar/preference/TaskManager$1;
.super Landroid/os/Handler;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/TaskManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/TaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/TaskManager$1;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager$1;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #getter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$000(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080094

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager$1;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #getter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$000(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$100()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager$1;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #getter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$000(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080095

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager$1;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #getter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$000(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/TaskManager$1;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #getter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mUsedMemory:J
    invoke-static {v4}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$200(Lcom/android/systemui/statusbar/preference/TaskManager;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager$1;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #getter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$000(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager$1;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #getter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$000(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/TaskManager$1;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #getter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mFreeMemory:J
    invoke-static {v4}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$300(Lcom/android/systemui/statusbar/preference/TaskManager;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager$1;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/TaskManager$1;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
