.class public Lorg/jivesoftware/smack/packet/RosterPacket$Item;
.super Ljava/lang/Object;
.source "RosterPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/RosterPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    }
.end annotation


# instance fields
.field private gRejected:Z

.field private gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

.field private groupNames:Ljava/util/List;

.field private itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

.field private itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field private name:Ljava/lang/String;

.field private quickContact:Z

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "user"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->user:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->user:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->user:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->user:Ljava/lang/String;

    .line 228
    :cond_0
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    .line 229
    iput-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 230
    iput-object v2, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 235
    iput-boolean v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gRejected:Z

    .line 236
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 237
    iput-boolean v1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->quickContact:Z

    .line 238
    return-void
.end method

.method private createGroupNames()Ljava/util/List;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/List;

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/List;

    return-object v0
.end method

.method private gStatusToString(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)Ljava/lang/String;
    .locals 3
    .parameter "status"

    .prologue
    .line 387
    const-string v0, ""

    .line 389
    .local v0, retVal:Ljava/lang/String;
    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$1;->$SwitchMap$org$jivesoftware$smack$packet$RosterPacket$Item$G_STATUS:[I

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 403
    :goto_0
    return-object v0

    .line 391
    :pswitch_0
    const-string v0, "B"

    .line 392
    goto :goto_0

    .line 394
    :pswitch_1
    const-string v0, "H"

    .line 395
    goto :goto_0

    .line 397
    :pswitch_2
    const-string v0, "P"

    .line 398
    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private statusStringToGStatus(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    .locals 1
    .parameter "status"

    .prologue
    .line 407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    const-string v0, "B"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 419
    :goto_0
    return-object v0

    .line 411
    :cond_0
    const-string v0, "H"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    goto :goto_0

    .line 414
    :cond_1
    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    goto :goto_0

    .line 419
    :cond_2
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    goto :goto_0
.end method


# virtual methods
.method public addGroupName(Ljava/lang/String;)V
    .locals 2
    .parameter "groupName"

    .prologue
    .line 333
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->createGroupNames()Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, list:Ljava/util/List;
    monitor-enter v0

    .line 335
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_0
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public gExtensionGetRejected()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gRejected:Z

    return v0
.end method

.method public gExtensionGetStatus()Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    return-object v0
.end method

.method public gExtensionSetRejected(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 362
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gRejected:Z

    .line 363
    return-void
.end method

.method public gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 370
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 371
    return-void
.end method

.method public gExtensionSetStatusString(Ljava/lang/String;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->statusStringToGStatus(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 375
    return-void
.end method

.method public getItemStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    return-object v0
.end method

.method public getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->user:Ljava/lang/String;

    return-object v0
.end method

.method public isQuickContact()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->quickContact:Z

    return v0
.end method

.method public setItemStatus(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V
    .locals 0
    .parameter "itemStatus"

    .prologue
    .line 308
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 309
    return-void
.end method

.method public setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V
    .locals 0
    .parameter "itemType"

    .prologue
    .line 290
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 291
    return-void
.end method

.method public setQuickContact(Z)V
    .locals 0
    .parameter "quickContact"

    .prologue
    .line 382
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->quickContact:Z

    .line 383
    return-void
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 464
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->ROSTER_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 465
    .local v1, rosterItem:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getName()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 468
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 470
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v3

    .line 471
    .local v3, type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->BOTH:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 472
    invoke-virtual {v1, v5, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 486
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v2

    .line 487
    .local v2, status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    if-eqz v2, :cond_2

    .line 488
    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->SUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 489
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 495
    :cond_2
    iget-boolean v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gRejected:Z

    if-eqz v4, :cond_3

    .line 496
    const/16 v4, 0x8

    invoke-virtual {v1, v4, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 499
    :cond_3
    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$1;->$SwitchMap$org$jivesoftware$smack$packet$RosterPacket$Item$G_STATUS:[I

    iget-object v5, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 516
    :goto_1
    :pswitch_0
    iget-boolean v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->quickContact:Z

    if-eqz v4, :cond_4

    .line 517
    const/4 v4, 0x6

    invoke-virtual {v1, v4, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 520
    :cond_4
    return-object v1

    .line 473
    .end local v2           #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    :cond_5
    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->FROM:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 474
    invoke-virtual {v1, v5, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_0

    .line 475
    :cond_6
    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->TO:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 476
    invoke-virtual {v1, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_0

    .line 477
    :cond_7
    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->NONE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 478
    invoke-virtual {v1, v5, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_0

    .line 479
    :cond_8
    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    const/4 v4, 0x4

    invoke-virtual {v1, v5, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_0

    .line 504
    .restart local v2       #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    :pswitch_1
    invoke-virtual {v1, v9, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_1

    .line 507
    :pswitch_2
    invoke-virtual {v1, v9, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_1

    .line 510
    :pswitch_3
    invoke-virtual {v1, v9, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_1

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public toXML()Ljava/lang/String;
    .locals 6

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 425
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v3, "<item jid=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 427
    const-string v3, " name=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    :cond_0
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-eqz v3, :cond_1

    .line 430
    const-string v3, " subscription=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    :cond_1
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    if-eqz v3, :cond_2

    .line 433
    const-string v3, " ask=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    if-eq v3, v4, :cond_3

    .line 438
    const-string v3, " gr:t=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gStatus:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-direct {p0, v4}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gStatusToString(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    :cond_3
    iget-boolean v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gRejected:Z

    if-eqz v3, :cond_4

    .line 441
    const-string v3, " gr:rejected=\'true\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    :cond_4
    iget-boolean v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->quickContact:Z

    if-eqz v3, :cond_5

    .line 445
    const-string v3, " gmr:qc=\'true\' xmlns:gmr=\"google:mobile:roster\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    :cond_5
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 451
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/List;

    monitor-enter v4

    .line 452
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 453
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->groupNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 454
    .local v1, groupName:Ljava/lang/String;
    const-string v3, "<group>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "</group>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 457
    .end local v1           #groupName:Ljava/lang/String;
    :cond_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    .end local v2           #i:I
    :cond_7
    const-string v3, "</item>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 457
    .restart local v2       #i:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
