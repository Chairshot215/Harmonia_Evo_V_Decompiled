.class Lcom/android/phone/CellBroadcastSettings$3;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CellBroadcastSettings;->displayMenu(Ljava/lang/String;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastSettings;

.field final synthetic val$Id:J

.field final synthetic val$channel:Ljava/lang/String;

.field final synthetic val$enable:I

.field final synthetic val$initialValues:Landroid/content/ContentValues;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/CellBroadcastSettings;ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iput p2, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$enable:I

    iput-object p3, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$initialValues:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$channel:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$title:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$Id:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 424
    packed-switch p2, :pswitch_data_0

    .line 455
    :goto_0
    return-void

    .line 426
    :pswitch_0
    iget v0, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$enable:I

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$initialValues:Landroid/content/ContentValues;

    const-string v1, "enable"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CellBroadcastSettings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$initialValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$channel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastSettings;->updateChannel()V

    .line 433
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastSettings;->updateUi()V

    .line 436
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastSettings;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/util/CbsUtils;->submitCscb(Landroid/content/Context;)V

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$initialValues:Landroid/content/ContentValues;

    const-string v1, "enable"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 441
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$channel:Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$enable:I

    iget-wide v4, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$Id:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/CellBroadcastSettings;->editChannel(Ljava/lang/String;Ljava/lang/String;IJZ)V

    goto :goto_0

    .line 445
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CellBroadcastSettings;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings$3;->val$channel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastSettings;->updateChannel()V

    .line 448
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastSettings;->updateUi()V

    .line 451
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$3;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastSettings;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/util/CbsUtils;->submitCscb(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
