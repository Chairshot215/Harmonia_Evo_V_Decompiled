.class Lcom/android/dmportread/DMCommandService$2;
.super Ljava/lang/Thread;
.source "DMCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dmportread/DMCommandService;->loadEmailEntries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMCommandService;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMCommandService;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService$2;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 728
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$2;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-static {v0}, Lcom/android/dmportread/DMCommandService;->access$510(Lcom/android/dmportread/DMCommandService;)J

    .line 729
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$2;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-virtual {v0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/dmportread/TempContact;->TEMP_PHONES_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype=? AND raw_contact_id > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dmportread/DMCommandService$2;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->contactIDTmp:J
    invoke-static {v4}, Lcom/android/dmportread/DMCommandService;->access$500(Lcom/android/dmportread/DMCommandService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    aput-object v5, v4, v13

    const-string v5, "raw_contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 737
    .local v8, cur:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$2;->this$0:Lcom/android/dmportread/DMCommandService;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/dmportread/DMCommandService;->contactIDTmp:J
    invoke-static {v0, v1, v2}, Lcom/android/dmportread/DMCommandService;->access$502(Lcom/android/dmportread/DMCommandService;J)J

    .line 738
    if-eqz v8, :cond_5

    .line 739
    const/4 v6, 0x0

    .line 740
    .local v6, contact:Lcom/android/dmportread/TempContact;
    const/16 v7, 0x12d

    .line 746
    .local v7, contactInd:I
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 748
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 749
    .local v9, data:Ljava/lang/String;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 750
    .local v12, type:I
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 753
    .local v10, person_id:J
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$2;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/dmportread/DMCommandService;->access$600(Lcom/android/dmportread/DMCommandService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$2;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/dmportread/DMCommandService;->access$600(Lcom/android/dmportread/DMCommandService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #contact:Lcom/android/dmportread/TempContact;
    check-cast v6, Lcom/android/dmportread/TempContact;

    .line 755
    .restart local v6       #contact:Lcom/android/dmportread/TempContact;
    iget-wide v0, v6, Lcom/android/dmportread/TempContact;->mId:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    .line 766
    :cond_2
    if-eqz v6, :cond_0

    .line 767
    invoke-static {v12, v9, v6}, Lcom/android/dmportread/TempContact;->addPhoneEntry(ILjava/lang/String;Lcom/android/dmportread/TempContact;)V

    goto :goto_0

    .line 758
    :cond_3
    const/4 v6, 0x0

    .line 760
    add-int/lit8 v7, v7, 0x1

    .line 761
    rem-int/lit16 v0, v7, 0x12c

    if-nez v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$2;->this$0:Lcom/android/dmportread/DMCommandService;

    div-int/lit16 v1, v7, 0x12c

    #setter for: Lcom/android/dmportread/DMCommandService;->shareContactNum:I
    invoke-static {v0, v1}, Lcom/android/dmportread/DMCommandService;->access$702(Lcom/android/dmportread/DMCommandService;I)I

    goto :goto_1

    .line 770
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #person_id:J
    .end local v12           #type:I
    :cond_4
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$2;->this$0:Lcom/android/dmportread/DMCommandService;

    div-int/lit16 v1, v7, 0x12c

    #setter for: Lcom/android/dmportread/DMCommandService;->maximumContactNum:I
    invoke-static {v0, v1}, Lcom/android/dmportread/DMCommandService;->access$802(Lcom/android/dmportread/DMCommandService;I)I

    .line 773
    .end local v6           #contact:Lcom/android/dmportread/TempContact;
    .end local v7           #contactInd:I
    :cond_5
    return-void
.end method
