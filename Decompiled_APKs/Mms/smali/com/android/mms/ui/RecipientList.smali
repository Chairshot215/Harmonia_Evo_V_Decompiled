.class public Lcom/android/mms/ui/RecipientList;
.super Ljava/lang/Object;
.source "RecipientList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientList$Recipient;,
        Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;,
        Lcom/android/mms/ui/RecipientList$FilterHandler;
    }
.end annotation


# static fields
.field private static final HTC_DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = true

.field private static final MSG_FILTER_CONTACT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecipientList"

.field private static final UPDATE_REASON_EDITOR:I = 0x1

.field private static final UPDATE_REASON_FORCE:I = 0x2

.field private static final UPDATE_REASON_NONE:I


# instance fields
.field private mFilterHandler:Landroid/os/Handler;

.field private mFilterThread:Landroid/os/HandlerThread;

.field private final mInvalidRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRelease:Z

.field private final mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    .line 71
    iput-object v1, p0, Lcom/android/mms/ui/RecipientList;->mFilterThread:Landroid/os/HandlerThread;

    .line 72
    iput-object v1, p0, Lcom/android/mms/ui/RecipientList;->mFilterHandler:Landroid/os/Handler;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/RecipientList;->mIsRelease:Z

    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FilterThreadRL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterThread:Landroid/os/HandlerThread;

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v0, Lcom/android/mms/ui/RecipientList$FilterHandler;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientList;->mFilterThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/RecipientList$FilterHandler;-><init>(Landroid/os/Looper;Lcom/android/mms/ui/RecipientList;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterHandler:Landroid/os/Handler;

    .line 92
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/RecipientList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static createRecipient(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/ui/RecipientList$Recipient;
    .locals 4
    .parameter "context"
    .parameter "address"

    .prologue
    .line 337
    new-instance v1, Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-direct {v1}, Lcom/android/mms/ui/RecipientList$Recipient;-><init>()V

    .line 338
    .local v1, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    const-string v2, "%bcc%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    .line 340
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 347
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 348
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 350
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 359
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    .line 360
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    :goto_1
    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 362
    return-object v1

    .line 353
    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    goto :goto_0

    .line 356
    :cond_2
    iget-wide v2, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iput-wide v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 357
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_3
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method public static from(Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/ui/RecipientList;)Lcom/android/mms/ui/RecipientList;
    .locals 8
    .parameter "context"
    .parameter "address"
    .parameter "rl"

    .prologue
    .line 318
    if-nez p2, :cond_0

    .line 319
    new-instance p2, Lcom/android/mms/ui/RecipientList;

    .end local p2
    invoke-direct {p2}, Lcom/android/mms/ui/RecipientList;-><init>()V

    .line 320
    .restart local p2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 321
    const-string v7, ";"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, phoneNumbers:[Ljava/lang/String;
    array-length v3, v5

    .line 323
    .local v3, length:I
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 326
    .local v4, number:Ljava/lang/String;
    new-instance v6, Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-direct {v6}, Lcom/android/mms/ui/RecipientList$Recipient;-><init>()V

    .line 327
    .local v6, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iput-object v4, v6, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 328
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    .line 329
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_1

    const/4 v7, 0x2

    :goto_1
    invoke-virtual {p2, p0, v6, v7}, Lcom/android/mms/ui/RecipientList;->add(Landroid/content/Context;Lcom/android/mms/ui/RecipientList$Recipient;I)V

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 333
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #length:I
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #phoneNumbers:[Ljava/lang/String;
    .end local v6           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_2
    return-object p2
.end method

.method public static from(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/mms/ui/RecipientList;)Lcom/android/mms/ui/RecipientList;
    .locals 0
    .parameter "context"
    .parameter
    .parameter "rl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;",
            "Lcom/android/mms/ui/RecipientList;",
            ")",
            "Lcom/android/mms/ui/RecipientList;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, recipientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/RecipientList$Recipient;>;"
    if-nez p2, :cond_0

    new-instance p2, Lcom/android/mms/ui/RecipientList;

    .end local p2
    invoke-direct {p2}, Lcom/android/mms/ui/RecipientList;-><init>()V

    .line 310
    .restart local p2
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/android/mms/ui/RecipientList;->add(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 311
    return-object p2
.end method

.method public static from(Ljava/lang/String;Landroid/content/Context;)Lcom/android/mms/ui/RecipientList;
    .locals 11
    .parameter "address"
    .parameter "context"

    .prologue
    .line 755
    const-string v8, "RecipientList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "from> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v4, Lcom/android/mms/ui/RecipientList;

    invoke-direct {v4}, Lcom/android/mms/ui/RecipientList;-><init>()V

    .line 758
    .local v4, list:Lcom/android/mms/ui/RecipientList;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 759
    const-string v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 760
    .local v6, phoneNumbers:[Ljava/lang/String;
    array-length v3, v6

    .line 761
    .local v3, length:I
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 764
    .local v5, number:Ljava/lang/String;
    new-instance v7, Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-direct {v7}, Lcom/android/mms/ui/RecipientList$Recipient;-><init>()V

    .line 765
    .local v7, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iput-object v5, v7, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 766
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_0

    const/4 v8, 0x2

    :goto_1
    invoke-virtual {v4, p1, v7, v8}, Lcom/android/mms/ui/RecipientList;->add(Landroid/content/Context;Lcom/android/mms/ui/RecipientList$Recipient;I)V

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 770
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #length:I
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #phoneNumbers:[Ljava/lang/String;
    .end local v7           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_1
    return-object v4
.end method

.method public static getRecipientList(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/ui/RecipientList;
    .locals 2
    .parameter "context"
    .parameter "address"

    .prologue
    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, phoneNumbers:[Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 736
    :cond_0
    invoke-static {p0, v0}, Lcom/android/mms/ui/RecipientList;->getRecipientListFromArray(Landroid/content/Context;[Ljava/lang/String;)Lcom/android/mms/ui/RecipientList;

    move-result-object v1

    return-object v1
.end method

.method public static getRecipientListFromArray(Landroid/content/Context;[Ljava/lang/String;)Lcom/android/mms/ui/RecipientList;
    .locals 9
    .parameter "context"
    .parameter "address"

    .prologue
    .line 705
    if-eqz p1, :cond_0

    .line 706
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v7, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_0
    new-instance v3, Lcom/android/mms/ui/RecipientList;

    invoke-direct {v3}, Lcom/android/mms/ui/RecipientList;-><init>()V

    .line 712
    .local v3, list:Lcom/android/mms/ui/RecipientList;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v6, recipientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/RecipientList$Recipient;>;"
    if-eqz p1, :cond_2

    .line 714
    move-object v0, p1

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 715
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 716
    new-instance v5, Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-direct {v5}, Lcom/android/mms/ui/RecipientList$Recipient;-><init>()V

    .line 717
    .local v5, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 718
    const/4 v7, 0x1

    array-length v8, p1

    invoke-virtual {v5, p0, v7, v8}, Lcom/android/mms/ui/RecipientList$Recipient;->getContactInfo(Landroid/content/Context;ZI)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v5

    .line 719
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v5, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    .line 720
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    .end local v5           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 724
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, p0, v6}, Lcom/android/mms/ui/RecipientList;->add(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 725
    return-object v3
.end method

.method private isDuplicate(Lcom/android/mms/ui/RecipientList$Recipient;)Z
    .locals 6
    .parameter "r"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    if-nez p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 205
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    new-array v5, v2, [Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/mms/ui/RecipientList$Recipient;

    .line 206
    .local v1, temp:[Lcom/android/mms/ui/RecipientList$Recipient;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 207
    iget-object v4, p1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/Telephony$Sms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 208
    aget-object v4, v1, v0

    iget-object v4, v4, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 209
    goto :goto_0

    .line 213
    :cond_2
    aget-object v4, v1, v0

    iget-object v4, v4, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 214
    goto :goto_0

    .line 206
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Landroid/content/Context;Lcom/android/mms/ui/RecipientList$Recipient;)V
    .locals 1
    .parameter "context"
    .parameter "r"

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mms/ui/RecipientList;->add(Landroid/content/Context;Lcom/android/mms/ui/RecipientList$Recipient;I)V

    .line 134
    return-void
.end method

.method public add(Landroid/content/Context;Lcom/android/mms/ui/RecipientList$Recipient;I)V
    .locals 6
    .parameter "context"
    .parameter "r"
    .parameter "updateReason"

    .prologue
    .line 138
    iget-object v2, p2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, temp:Ljava/lang/String;
    iput-object v1, p2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 141
    invoke-direct {p0, p2}, Lcom/android/mms/ui/RecipientList;->isDuplicate(Lcom/android/mms/ui/RecipientList$Recipient;)Z

    move-result v0

    .line 142
    .local v0, duplicate:Z
    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$Recipient;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mFilterHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/RecipientList;->mFilterHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;-><init>(Lcom/android/mms/ui/RecipientList;Landroid/content/Context;Lcom/android/mms/ui/RecipientList$Recipient;I)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    if-nez v0, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public add(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, recipientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/RecipientList$Recipient;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 121
    .local v2, r:Lcom/android/mms/ui/RecipientList$Recipient;
    invoke-direct {p0, v2}, Lcom/android/mms/ui/RecipientList;->isDuplicate(Lcom/android/mms/ui/RecipientList$Recipient;)Z

    move-result v0

    .line 122
    .local v0, duplicate:Z
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/ui/RecipientList$Recipient;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 123
    iget-object v3, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    if-nez v0, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v0           #duplicate:Z
    .end local v2           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_2
    return-void
.end method

.method public containsBcc()Z
    .locals 3

    .prologue
    .line 799
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 800
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 801
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-boolean v2, v2, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v2, :cond_0

    .line 802
    const/4 v2, 0x1

    .line 805
    :goto_1
    return v2

    .line 800
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 805
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public containsEmail()Z
    .locals 3

    .prologue
    .line 809
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 810
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 811
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v2, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 812
    const/4 v2, 0x1

    .line 815
    :goto_1
    return v2

    .line 810
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 815
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public countInvalidRecipients()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public delete(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 369
    return-void
.end method

.method public deleteAllInvalidRecipient()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 411
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    iput-object v2, p0, Lcom/android/mms/ui/RecipientList;->mFilterHandler:Landroid/os/Handler;

    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 64
    iput-object v2, p0, Lcom/android/mms/ui/RecipientList;->mFilterThread:Landroid/os/HandlerThread;

    .line 66
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 67
    return-void
.end method

.method public findName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v0, v0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v0, v0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 374
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findNumber(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move-object v0, v1

    .line 385
    :goto_0
    return-object v0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v0, v0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v0, v0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 385
    goto :goto_0
.end method

.method public findPersonId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-wide v0, v0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    return-wide v0
.end method

.method public getBccNumbers()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 843
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 845
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 846
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 847
    .local v3, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 848
    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 851
    .end local v3           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getEmailAddIndexes()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v1, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 831
    .local v0, count:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 833
    iget-object v3, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v3, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 834
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 837
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    .line 838
    .end local v1           #emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-object v1
.end method

.method public getInvalidRecipientString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 911
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 912
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 913
    if-eqz v1, :cond_0

    .line 914
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 918
    .local v2, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v4, :cond_1

    .line 919
    const-string v4, "%bcc%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    :cond_1
    iget-object v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    .end local v2           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getLongestEmail()Ljava/lang/String;
    .locals 4

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, emailString:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 226
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v2, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v2, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v0, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 225
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v1           #i:I
    :cond_2
    return-object v0
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 855
    iget-object v3, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 856
    .local v0, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 857
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 858
    iget-object v3, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v3, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 860
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getRecipient(I)Lcom/android/mms/ui/RecipientList$Recipient;
    .locals 1
    .parameter "index"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientList$Recipient;

    return-object v0
.end method

.method public getRecipientString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 929
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 930
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 931
    if-eqz v1, :cond_0

    .line 932
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 941
    .local v2, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-object v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    .end local v2           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getToNumbers()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 776
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 777
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 778
    .local v3, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 779
    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    .end local v3           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getToNumbersArr()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 788
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 789
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 790
    .local v3, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 791
    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .end local v3           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_1
    return-object v2
.end method

.method public hasInvalidRecipient()Z
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient()Z
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromSIM(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-boolean v0, v0, Lcom/android/mms/ui/RecipientList$Recipient;->isFromSIM:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public refreshList(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const-wide/16 v8, 0x0

    .line 155
    iget-object v5, p0, Lcom/android/mms/ui/RecipientList;->mFilterHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 157
    iget-object v5, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 158
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-boolean v5, p0, Lcom/android/mms/ui/RecipientList;->mIsRelease:Z

    if-eqz v5, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .end local v1           #i:I
    .end local v4           #size:I
    :cond_0
    :goto_1
    return-void

    .line 169
    .restart local v1       #i:I
    .restart local v4       #size:I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 170
    .local v2, r:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-object v5, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 178
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v6

    invoke-virtual {v2, p1, v5, v6}, Lcom/android/mms/ui/RecipientList$Recipient;->getContactInfo(Landroid/content/Context;ZI)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v3

    .line 181
    .local v3, result:Lcom/android/mms/ui/RecipientList$Recipient;
    if-eqz v3, :cond_3

    .line 182
    const-string v5, "RecipientList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "indexOf(r)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-wide v5, v3, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    cmp-long v5, v5, v8

    if-gtz v5, :cond_2

    iget-wide v5, v2, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    cmp-long v5, v5, v8

    if-lez v5, :cond_3

    .line 185
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    :cond_3
    :try_start_2
    monitor-exit p0

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v2           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    .end local v3           #result:Lcom/android/mms/ui/RecipientList$Recipient;
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "RecipientList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRecipients index out of bound. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    monitor-exit p0

    goto :goto_1

    .line 194
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public release()V
    .locals 2

    .prologue
    .line 96
    monitor-enter p0

    .line 98
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/mms/ui/RecipientList;->mIsRelease:Z

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterHandler:Landroid/os/Handler;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList;->mFilterThread:Landroid/os/HandlerThread;

    .line 110
    :cond_1
    monitor-exit p0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeExceedRecipients(I)Z
    .locals 6
    .parameter "max"

    .prologue
    .line 740
    iget-object v5, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 741
    .local v4, listLen:I
    if-le v4, p1, :cond_1

    .line 742
    sub-int v0, v4, p1

    .line 743
    .local v0, diff:I
    add-int/lit8 v2, v4, -0x1

    .line 744
    .local v2, lastIdx:I
    sub-int v3, v2, v0

    .line 745
    .local v3, limitedIdx:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-le v1, v3, :cond_0

    .line 746
    iget-object v5, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 745
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 748
    :cond_0
    const/4 v5, 0x1

    .line 750
    .end local v0           #diff:I
    .end local v1           #i:I
    .end local v2           #lastIdx:I
    .end local v3           #limitedIdx:I
    :goto_1
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public serialize()Ljava/lang/String;
    .locals 5

    .prologue
    .line 885
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 886
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 887
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 888
    if-eqz v1, :cond_0

    .line 889
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 893
    .local v2, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v4, :cond_1

    .line 894
    const-string v4, "%bcc%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    :cond_1
    iget-object v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    .end local v2           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public serialize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filternumber"

    .prologue
    .line 864
    if-eqz p1, :cond_4

    .line 865
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 867
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 868
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 869
    .local v2, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-object v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 870
    if-eqz v1, :cond_0

    .line 871
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :cond_0
    iget-boolean v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v4, :cond_1

    .line 874
    const-string v4, "%bcc%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_1
    iget-object v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 879
    .end local v2           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 881
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientList;->serialize()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public setRecipient(ILcom/android/mms/ui/RecipientList$Recipient;)Lcom/android/mms/ui/RecipientList$Recipient;
    .locals 1
    .parameter "index"
    .parameter "r"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientList$Recipient;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
