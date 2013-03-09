.class public Lcom/android/mms/data/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$Cache;,
        Lcom/android/mms/data/Contact$UpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Contact"

.field private static final V:Z

.field private static final sContactsObserver:Landroid/database/ContentObserver;

.field private static final sPresenceObserver:Landroid/database/ContentObserver;

.field private static final sTaskStack:Lcom/android/mms/util/TaskStack;


# instance fields
.field private mAvatar:Landroid/graphics/drawable/BitmapDrawable;

.field private mLabel:Ljava/lang/String;

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/data/Contact$UpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNameAndNumber:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPersonId:J

.field private mPresenceResId:I

.field private mPresenceText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/mms/util/TaskStack;

    invoke-direct {v0}, Lcom/android/mms/util/TaskStack;-><init>()V

    sput-object v0, Lcom/android/mms/data/Contact;->sTaskStack:Lcom/android/mms/util/TaskStack;

    .line 33
    new-instance v0, Lcom/android/mms/data/Contact$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/data/Contact$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/data/Contact;->sContactsObserver:Landroid/database/ContentObserver;

    .line 43
    new-instance v0, Lcom/android/mms/data/Contact$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/data/Contact$2;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/data/Contact;->sPresenceObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    .line 75
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    .line 81
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/android/mms/data/Contact;->updateContact(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method private static asyncUpdateContact(Lcom/android/mms/data/Contact;Z)V
    .locals 3
    .parameter "c"
    .parameter "canBlock"

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v1, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncUpdateContact for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V

    .line 197
    :cond_1
    new-instance v0, Lcom/android/mms/data/Contact$3;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Contact$3;-><init>(Lcom/android/mms/data/Contact;)V

    .line 203
    .local v0, r:Ljava/lang/Runnable;
    if-eqz p1, :cond_2

    .line 204
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 206
    :cond_2
    sget-object v1, Lcom/android/mms/data/Contact;->sTaskStack:Lcom/android/mms/util/TaskStack;

    invoke-virtual {v1, v0}, Lcom/android/mms/util/TaskStack;->push(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static asyncUpdateContacts(Ljava/util/List;Z)V
    .locals 2
    .parameter
    .parameter "canBlock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/data/Contact;>;"
    new-instance v0, Lcom/android/mms/data/Contact$4;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Contact$4;-><init>(Ljava/util/List;)V

    .line 223
    .local v0, r:Ljava/lang/Runnable;
    if-eqz p1, :cond_0

    .line 224
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    sget-object v1, Lcom/android/mms/data/Contact;->sTaskStack:Lcom/android/mms/util/TaskStack;

    invoke-virtual {v1, v0}, Lcom/android/mms/util/TaskStack;->push(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/util/ContactInfoCache$CacheEntry;)Z
    .locals 9
    .parameter "orig"
    .parameter "newEntry"

    .prologue
    const/4 v4, 0x1

    .line 147
    iget-object v5, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, oldName:Ljava/lang/String;
    iget-object v5, p1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, newName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v4

    .line 154
    :cond_1
    iget-object v5, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, oldLabel:Ljava/lang/String;
    iget-object v5, p1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->phoneLabel:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, newLabel:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    iget-wide v5, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    iget-wide v7, p1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 166
    iget v5, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    iget v6, p1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->presenceResId:I

    if-ne v5, v6, :cond_0

    .line 171
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static dump()V
    .locals 0

    .prologue
    .line 362
    invoke-static {}, Lcom/android/mms/data/Contact$Cache;->dump()V

    .line 363
    return-void
.end method

.method private static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 140
    if-eqz p0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method public static formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "number"

    .prologue
    .line 269
    move-object v0, p1

    .line 270
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .end local v0           #formattedNumber:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 3
    .parameter "number"
    .parameter "canBlock"

    .prologue
    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Contact.get called with null or empty number"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/Contact$Cache;->get(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 114
    .local v0, contact:Lcom/android/mms/data/Contact;
    if-nez v0, :cond_1

    .line 115
    new-instance v0, Lcom/android/mms/data/Contact;

    .end local v0           #contact:Lcom/android/mms/data/Contact;
    invoke-direct {v0, p0}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v0       #contact:Lcom/android/mms/data/Contact;
    invoke-static {v0}, Lcom/android/mms/data/Contact$Cache;->put(Lcom/android/mms/data/Contact;)V

    .line 117
    invoke-static {v0, p1}, Lcom/android/mms/data/Contact;->asyncUpdateContact(Lcom/android/mms/data/Contact;Z)V

    .line 119
    :cond_1
    return-object v0
.end method

.method private static handleLocalNumber(Lcom/android/mms/data/Contact;)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/android/mms/data/Contact$Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104011e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 348
    invoke-static {p0}, Lcom/android/mms/data/Contact$Cache;->init(Landroid/content/Context;)V

    .line 349
    invoke-static {p0}, Lcom/android/mms/data/RecipientIdCache;->init(Landroid/content/Context;)V

    .line 359
    return-void
.end method

.method public static invalidateCache()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "invalidateCache"

    invoke-static {v0}, Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/ContactInfoCache;->invalidateCache()V

    .line 134
    sget-object v0, Lcom/android/mms/data/Contact;->sTaskStack:Lcom/android/mms/util/TaskStack;

    invoke-virtual {v0}, Lcom/android/mms/util/TaskStack;->clear()V

    .line 136
    invoke-static {}, Lcom/android/mms/data/Contact$Cache;->getContacts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->asyncUpdateContacts(Ljava/util/List;Z)V

    .line 137
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 466
    const-string v0, "Contact"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
.end method

.method private static varargs logWithTrace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .parameter "msg"
    .parameter "format"

    .prologue
    const/4 v5, 0x7

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 85
    .local v0, current:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 87
    .local v4, stack:[Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    const-string v6, "] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v6, " <- "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    array-length v6, v4

    if-le v6, v5, :cond_1

    .line 95
    .local v5, stop:I
    :goto_0
    const/4 v1, 0x3

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 96
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, methodName:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v6, v1, 0x1

    if-eq v6, v5, :cond_0

    .line 99
    const-string v6, " <- "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    .end local v1           #i:I
    .end local v2           #methodName:Ljava/lang/String;
    .end local v5           #stop:I
    :cond_1
    array-length v5, v4

    goto :goto_0

    .line 103
    .restart local v1       #i:I
    .restart local v5       #stop:I
    :cond_2
    const-string v6, "Contact"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public static startPresenceObserver()V
    .locals 4

    .prologue
    .line 366
    invoke-static {}, Lcom/android/mms/data/Contact$Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v3, Lcom/android/mms/data/Contact;->sPresenceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 368
    return-void
.end method

.method public static stopPresenceObserver()V
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/android/mms/data/Contact$Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Contact;->sPresenceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 372
    return-void
.end method

.method private static updateContact(Lcom/android/mms/data/Contact;)V
    .locals 8
    .parameter "c"

    .prologue
    .line 231
    if-nez p0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-static {p0}, Lcom/android/mms/data/Contact;->handleLocalNumber(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 240
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v0

    .line 241
    .local v0, cache:Lcom/android/mms/util/ContactInfoCache;
    iget-object v4, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/mms/util/ContactInfoCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v1

    .line 242
    .local v1, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    invoke-static {}, Lcom/android/mms/data/Contact$Cache;->getInstance()Lcom/android/mms/data/Contact$Cache;

    move-result-object v5

    monitor-enter v5

    .line 243
    :try_start_0
    invoke-static {p0, v1}, Lcom/android/mms/data/Contact;->contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/util/ContactInfoCache$CacheEntry;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 244
    const-string v4, "Mms:app"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateContact: contact changed for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V

    .line 249
    :cond_2
    iget-object v4, v1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    .line 250
    iget-object v4, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    .line 251
    iget-object v4, v1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->phoneLabel:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    .line 252
    iget-wide v6, v1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    iput-wide v6, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    .line 253
    iget v4, v1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->presenceResId:I

    iput v4, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    .line 254
    iget-object v4, v1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->presenceText:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    .line 255
    iget-object v4, v1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v4, p0, Lcom/android/mms/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    .line 256
    iget-object v4, p0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    .line 258
    .local v3, l:Lcom/android/mms/data/Contact$UpdateListener;
    invoke-interface {v3, p0}, Lcom/android/mms/data/Contact$UpdateListener;->onUpdate(Lcom/android/mms/data/Contact;)V

    goto :goto_1

    .line 261
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #l:Lcom/android/mms/data/Contact$UpdateListener;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 320
    .local v0, added:Z
    monitor-exit p0

    return-void

    .line 318
    .end local v0           #added:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dumpListeners()V
    .locals 7

    .prologue
    .line 328
    monitor-enter p0

    const/4 v0, 0x0

    .line 329
    .local v0, i:I
    :try_start_0
    const-string v4, "Contact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Contact] dumpListeners("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v4, p0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    .line 331
    .local v3, listener:Lcom/android/mms/data/Contact$UpdateListener;
    const-string v4, "Contact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 333
    .end local v3           #listener:Lcom/android/mms/data/Contact$UpdateListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 328
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .restart local v0       #i:I
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit p0

    throw v4

    .end local v0           #i:I
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1
.end method

.method public declared-synchronized existsInDatabase()Z
    .locals 4

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAvatar(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "defaultValue"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/mms/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    :cond_0
    return-object p1
.end method

.method public declared-synchronized getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNameAndNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPersonId()J
    .locals 2

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide v0
.end method

.method public declared-synchronized getPresenceResId()I
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPresenceText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmail()Z
    .locals 1

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 325
    .local v0, removed:Z
    monitor-exit p0

    return-void

    .line 323
    .end local v0           #removed:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    const-string v0, "{ number=%s, name=%s, nameAndNumber=%s, label=%s, person_id=%d }"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
