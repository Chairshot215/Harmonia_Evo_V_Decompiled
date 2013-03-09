.class Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditSpeedDialEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/EditSpeedDialEntryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    .line 1133
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1134
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 1138
    if-nez p3, :cond_0

    .line 1186
    :goto_0
    return-void

    .line 1141
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1157
    :pswitch_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->setName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1700(Lcom/android/htcdialer/EditSpeedDialEntryActivity;Ljava/lang/String;)V

    .line 1161
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1163
    const/4 v1, 0x3

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1800()[Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.contact_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mUserId:J
    invoke-static {v5}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1900(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1174
    :pswitch_1
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1300(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/database/Cursor;

    move-result-object v8

    .line 1175
    .local v8, tmpCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #setter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1302(Lcom/android/htcdialer/EditSpeedDialEntryActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1176
    if-eqz v8, :cond_2

    .line 1177
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1179
    :cond_2
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$QueryHandler;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #calls: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->updateAndInit()V
    invoke-static {v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$2000(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)V

    goto :goto_0

    .line 1141
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
