.class Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;
.super Ljava/lang/Thread;
.source "MailDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataExtractThread"
.end annotation


# instance fields
.field accid_:J

.field accname_:Ljava/lang/String;

.field cursor_:Landroid/database/Cursor;

.field widgetinfo_:Lcom/htc/htcmailwidgets/Components$WidgetInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3053
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3054
    return-void
.end method


# virtual methods
.method public SetParams(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V
    .locals 0
    .parameter "c"
    .parameter "w"
    .parameter "acc_id"
    .parameter "acc_name"

    .prologue
    .line 3057
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->cursor_:Landroid/database/Cursor;

    .line 3058
    iput-object p2, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->widgetinfo_:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    .line 3059
    iput-wide p3, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->accid_:J

    .line 3060
    iput-object p5, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->accname_:Ljava/lang/String;

    .line 3061
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3064
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->cursor_:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->cursor_:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3065
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->cursor_:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3066
    :cond_0
    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->cursor_:Landroid/database/Cursor;

    .line 3068
    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->widgetinfo_:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    .line 3069
    iput-object v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->accname_:Ljava/lang/String;

    .line 3070
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->accid_:J

    .line 3072
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2502(Z)Z

    .line 3073
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 3077
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3079
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3080
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->reset()V

    .line 3100
    :goto_0
    return-void

    .line 3084
    :cond_0
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1500()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    sget-object v1, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_DONOTHING:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2800()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2900()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3086
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->cursor_:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->widgetinfo_:Lcom/htc/htcmailwidgets/Components$WidgetInfo;

    iget-wide v2, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->accid_:J

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->accname_:Ljava/lang/String;

    iget-wide v5, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->accid_:J

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->accname_:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailDataList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->accid_:J

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->accname_:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailIDList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/htc/htcmailwidgets/MailDataManager;->extractMailData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3099
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->reset()V

    goto :goto_0

    .line 3088
    :cond_2
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1200()Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3089
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3090
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1200()Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    move-result-object v0

    const v1, 0x30001

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3091
    :cond_3
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3092
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1200()Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    move-result-object v0

    const v1, 0x30002

    invoke-virtual {v0, v1}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3093
    :cond_4
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$2900()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3094
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$3000()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$DataExtractThread;->accid_:J

    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager;->mQueryState:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailIntent;->sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V

    goto :goto_1
.end method
