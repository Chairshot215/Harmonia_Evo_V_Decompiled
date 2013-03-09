.class public Lcom/htc/htcmailwidgets/MailDataManager$AccountData;
.super Ljava/lang/Object;
.source "MailDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountData"
.end annotation


# instance fields
.field public account_id_:J

.field public account_name_:Ljava/lang/String;

.field public dirty_:Z

.field public extractdataposition_:I

.field public mail_data_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;"
        }
    .end annotation
.end field

.field public mail_id_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public user_counts_:I

.field public widgetid_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-wide v2, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->account_id_:J

    .line 223
    iput-wide v2, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->account_id_:J

    .line 224
    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->account_name_:Ljava/lang/String;

    .line 225
    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    .line 226
    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    .line 227
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->dirty_:Z

    .line 228
    iput v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->user_counts_:I

    .line 229
    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    .line 230
    iput v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->extractdataposition_:I

    .line 231
    return-void
.end method


# virtual methods
.method public addWidgetId(I)V
    .locals 2
    .parameter "widgetid"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public init(JLjava/lang/String;)V
    .locals 2
    .parameter "acc_id"
    .parameter "acc_name"

    .prologue
    const/4 v1, 0x0

    .line 234
    iput-wide p1, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->account_id_:J

    .line 235
    iput-object p3, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->account_name_:Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    .line 238
    iput-boolean v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->dirty_:Z

    .line 239
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->user_counts_:I

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    .line 241
    iput v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->extractdataposition_:I

    .line 242
    return-void
.end method

.method public isWidgetIdExist(I)Z
    .locals 4
    .parameter "widgetid"

    .prologue
    const/4 v3, 0x0

    .line 257
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v2, v3

    .line 266
    :goto_0
    return v2

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 261
    .local v0, i:I
    if-ne v0, p1, :cond_1

    .line 262
    const/4 v2, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_2
    move v2, v3

    .line 266
    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 283
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->account_id_:J

    .line 284
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->account_name_:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 290
    :cond_0
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    .line 292
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 296
    :cond_1
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    .line 298
    iput-boolean v3, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->dirty_:Z

    .line 299
    iput v3, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->user_counts_:I

    .line 301
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 303
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 305
    :cond_2
    iput-object v2, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    .line 306
    return-void
.end method

.method public removeWidgetId(I)V
    .locals 3
    .parameter "widgetid"

    .prologue
    .line 274
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 276
    .local v0, index:I
    if-gez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resetData()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 322
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 326
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->widgetid_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 333
    :cond_2
    return-void
.end method

.method public resetMailData()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 311
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 315
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 317
    :cond_1
    return-void
.end method

.method public update(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailData;>;"
    .local p2, id:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    .line 248
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_data_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 250
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    .line 252
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    .line 253
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$AccountData;->mail_id_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 254
    return-void
.end method
