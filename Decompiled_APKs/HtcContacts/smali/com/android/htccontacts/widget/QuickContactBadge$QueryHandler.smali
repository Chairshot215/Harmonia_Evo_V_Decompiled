.class Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/android/htccontacts/widget/QuickContactBadge;

    .line 267
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 268
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 272
    const/4 v4, 0x0

    .line 273
    .local v4, lookupUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 274
    .local v2, createUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 277
    .local v5, trigger:Z
    packed-switch p1, :pswitch_data_0

    .line 304
    .end local p2
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 305
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/android/htccontacts/widget/QuickContactBadge;

    #setter for: Lcom/android/htccontacts/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v6, v4}, Lcom/android/htccontacts/widget/QuickContactBadge;->access$002(Lcom/android/htccontacts/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 310
    iget-object v6, p0, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/android/htccontacts/widget/QuickContactBadge;

    #calls: Lcom/android/htccontacts/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v6}, Lcom/android/htccontacts/widget/QuickContactBadge;->access$100(Lcom/android/htccontacts/widget/QuickContactBadge;)V

    .line 312
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 316
    iget-object v6, p0, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/android/htccontacts/widget/QuickContactBadge;

    #getter for: Lcom/android/htccontacts/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/htccontacts/widget/QuickContactBadge;->access$200(Lcom/android/htccontacts/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 317
    iget-object v6, p0, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/android/htccontacts/widget/QuickContactBadge;

    iget-object v7, p0, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/android/htccontacts/widget/QuickContactBadge;

    #getter for: Lcom/android/htccontacts/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/htccontacts/widget/QuickContactBadge;->access$200(Lcom/android/htccontacts/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/htccontacts/widget/QuickContactBadge;->trigger(Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v6, v4, v7}, Lcom/android/htccontacts/widget/QuickContactBadge;->access$300(Lcom/android/htccontacts/widget/QuickContactBadge;Landroid/net/Uri;Ljava/lang/String;)V

    .line 330
    :cond_2
    :goto_1
    return-void

    .line 279
    .restart local p2
    :pswitch_0
    const/4 v5, 0x1

    .line 280
    :try_start_0
    const-string v6, "tel"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v7, 0x0

    invoke-static {v6, p2, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 283
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 284
    sget v6, Lcom/android/htccontacts/widget/QuickContactBadge;->PHONE_ID_COLUMN_INDEX:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 285
    .local v0, contactId:J
    sget v6, Lcom/android/htccontacts/widget/QuickContactBadge;->PHONE_LOOKUP_STRING_COLUMN_INDEX:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 287
    goto :goto_0

    .line 292
    .end local v0           #contactId:J
    .end local v3           #lookupKey:Ljava/lang/String;
    .restart local p2
    :pswitch_2
    const/4 v5, 0x1

    .line 293
    const-string v6, "mailto"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v7, 0x0

    invoke-static {v6, p2, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 296
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 297
    sget v6, Lcom/android/htccontacts/widget/QuickContactBadge;->EMAIL_ID_COLUMN_INDEX:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 298
    .restart local v0       #contactId:J
    sget v6, Lcom/android/htccontacts/widget/QuickContactBadge;->EMAIL_LOOKUP_STRING_COLUMN_INDEX:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    .restart local v3       #lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 304
    .end local v0           #contactId:J
    .end local v3           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz p3, :cond_3

    .line 305
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_3
    throw v6

    .line 319
    :cond_4
    iget-object v6, p0, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/android/htccontacts/widget/QuickContactBadge;

    #calls: Lcom/android/htccontacts/widget/QuickContactBadge;->trigger(Landroid/net/Uri;)V
    invoke-static {v6, v4}, Lcom/android/htccontacts/widget/QuickContactBadge;->access$400(Lcom/android/htccontacts/widget/QuickContactBadge;Landroid/net/Uri;)V

    goto :goto_1

    .line 322
    :cond_5
    if-eqz v2, :cond_2

    .line 327
    iget-object v6, p0, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/android/htccontacts/widget/QuickContactBadge;

    iget-object v7, p0, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/android/htccontacts/widget/QuickContactBadge;

    #getter for: Lcom/android/htccontacts/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/htccontacts/widget/QuickContactBadge;->access$500(Lcom/android/htccontacts/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/htccontacts/widget/QuickContactBadge$QueryHandler;->this$0:Lcom/android/htccontacts/widget/QuickContactBadge;

    #getter for: Lcom/android/htccontacts/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/htccontacts/widget/QuickContactBadge;->access$200(Lcom/android/htccontacts/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/htccontacts/widget/QuickContactBadge;->trigger(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v4, v7, v8}, Lcom/android/htccontacts/widget/QuickContactBadge;->access$600(Lcom/android/htccontacts/widget/QuickContactBadge;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
