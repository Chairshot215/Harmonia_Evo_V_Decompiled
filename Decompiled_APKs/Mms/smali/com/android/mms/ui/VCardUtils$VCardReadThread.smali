.class Lcom/android/mms/ui/VCardUtils$VCardReadThread;
.super Ljava/lang/Thread;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VCardReadThread"
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mCanceled:Z

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mData:[B

.field private mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTargetType:I

.field private mVCardParser:Lcom/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/VCardUtils$ParseCompleteListener;[BLandroid/accounts/Account;)V
    .locals 1
    .parameter "context"
    .parameter "targetType"
    .parameter "listener"
    .parameter "data"
    .parameter "account"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mContext:Ljava/lang/ref/WeakReference;

    .line 144
    iput p2, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mTargetType:I

    .line 145
    iput-object p3, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    .line 146
    iput-object p4, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mData:[B

    .line 147
    iput-object p5, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mAccount:Landroid/accounts/Account;

    .line 149
    invoke-direct {p0}, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->init()V

    .line 150
    return-void
.end method

.method private doActuallyReadOneVCard([BLandroid/accounts/Account;Ljava/lang/String;Lcom/android/vcard/VCardSourceDetector;)Z
    .locals 11
    .parameter "mData"
    .parameter "account"
    .parameter "charset"
    .parameter "detector"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 226
    .local v6, context:Landroid/content/Context;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, currentLanguage:Ljava/lang/String;
    const/high16 v0, 0x7f09

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v4

    .line 237
    .local v4, vcardType:I
    const-string p3, "ISO-8859-1"

    .line 238
    new-instance v3, Lcom/android/vcard/VCardEntryConstructor;

    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mAccount:Landroid/accounts/Account;

    invoke-direct {v3, v4, v0}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;)V

    .line 241
    .local v3, interpreter:Lcom/android/vcard/VCardEntryConstructor;
    iget v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mTargetType:I

    if-ne v0, v10, :cond_0

    .line 242
    new-instance v0, Lcom/android/mms/ui/VCardUtils$EntryParseCommitter;

    iget-object v1, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/VCardUtils$EntryParseCommitter;-><init>(Landroid/content/ContentResolver;Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;)V

    invoke-virtual {v3, v0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 249
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->readOneVCardFile([BLjava/lang/String;Lcom/android/vcard/VCardInterpreter;IZ)Z
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v9

    .line 256
    :goto_1
    return v0

    .line 244
    :cond_0
    new-instance v0, Lcom/android/mms/ui/VCardUtils$EntryParseHandler;

    iget-object v1, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardUtils$EntryParseHandler;-><init>(Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;)V

    invoke-virtual {v3, v0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    goto :goto_0

    .line 253
    :catch_0
    move-exception v8

    .line 254
    .local v8, e:Lcom/android/vcard/exception/VCardNestedException;
    const-string v0, "VCardUtils"

    const-string v1, "Never reach here."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8           #e:Lcom/android/vcard/exception/VCardNestedException;
    :cond_1
    move v0, v10

    .line 256
    goto :goto_1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    .line 154
    iget-object v1, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 156
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardUtils"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 159
    return-void
.end method

.method private readOneVCardFile([BLjava/lang/String;Lcom/android/vcard/VCardInterpreter;IZ)Z
    .locals 10
    .parameter "data"
    .parameter "charset"
    .parameter "interpreter"
    .parameter "vCardType"
    .parameter "throwNestedException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardNestedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 265
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 266
    .local v4, is:Ljava/io/ByteArrayInputStream;
    new-instance v6, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v6, p4}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V

    iput-object v6, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_5

    .line 269
    :try_start_1
    iget-object v6, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6, v4, p3}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    if-eqz v4, :cond_0

    .line 290
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_5

    .line 307
    :cond_0
    :goto_0
    const/4 v6, 0x1

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    :goto_1
    return v6

    .line 270
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .line 272
    .local v2, e1:Lcom/android/vcard/exception/VCardVersionException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 275
    :goto_2
    :try_start_4
    instance-of v6, p3, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v6, :cond_1

    .line 277
    move-object v0, p3

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 279
    :cond_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .local v5, is:Ljava/io/ByteArrayInputStream;
    :try_start_5
    new-instance v6, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v6}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    iput-object v6, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 283
    iget-object v6, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6, v5, p3}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_1

    .line 288
    if-eqz v5, :cond_4

    .line 290
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v4, v5

    .line 292
    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .line 284
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v3

    .line 285
    .local v3, e2:Lcom/android/vcard/exception/VCardVersionException;
    :try_start_7
    new-instance v6, Lcom/android/vcard/exception/VCardException;

    const-string v8, "vCard with unspported version."

    invoke-direct {v6, v8}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 288
    .end local v3           #e2:Lcom/android/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v2           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    :goto_3
    if-eqz v4, :cond_2

    .line 290
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_8 .. :try_end_8} :catch_5

    .line 292
    :cond_2
    :goto_4
    :try_start_9
    throw v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_9 .. :try_end_9} :catch_5

    .line 295
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v1

    .line 296
    .local v1, e:Ljava/io/IOException;
    const-string v6, "VCardUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException was emitted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 298
    goto :goto_1

    .line 291
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v6

    move-object v4, v5

    .line 292
    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .line 299
    .end local v2           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v1

    .line 300
    .local v1, e:Lcom/android/vcard/exception/VCardNotSupportedException;
    instance-of v6, v1, Lcom/android/vcard/exception/VCardNestedException;

    if-eqz v6, :cond_3

    if-eqz p5, :cond_3

    .line 301
    check-cast v1, Lcom/android/vcard/exception/VCardNestedException;

    .end local v1           #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    throw v1

    .restart local v1       #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :cond_3
    move v6, v7

    .line 303
    goto :goto_1

    .line 304
    .end local v1           #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :catch_5
    move-exception v1

    .local v1, e:Lcom/android/vcard/exception/VCardException;
    move v6, v7

    .line 305
    goto :goto_1

    .line 291
    .end local v1           #e:Lcom/android/vcard/exception/VCardException;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    :catch_6
    move-exception v6

    goto :goto_0

    .line 273
    .restart local v2       #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catch_7
    move-exception v6

    goto :goto_2

    .line 291
    .end local v2           #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catch_8
    move-exception v8

    goto :goto_4

    .line 288
    :catchall_1
    move-exception v6

    goto :goto_3

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .restart local v2       #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    :cond_4
    move-object v4, v5

    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is:Ljava/io/ByteArrayInputStream;
    goto :goto_0
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 166
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mData:[B

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    invoke-interface {v0, v1, v2}, Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;->onVCardParseComplete(ZLcom/android/vcard/VCardEntry;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 185
    :try_start_0
    new-instance v7, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v7}, Lcom/android/vcard/VCardEntryCounter;-><init>()V

    .line 186
    .local v7, counter:Lcom/android/vcard/VCardEntryCounter;
    new-instance v8, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v8}, Lcom/android/vcard/VCardSourceDetector;-><init>()V

    .line 187
    .local v8, detector:Lcom/android/vcard/VCardSourceDetector;
    new-instance v3, Lcom/android/mms/util/VCardInterpreterCollection;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/vcard/VCardInterpreter;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/mms/util/VCardInterpreterCollection;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .local v3, collection:Lcom/android/mms/util/VCardInterpreterCollection;
    const/4 v10, 0x0

    .line 195
    .local v10, result:Z
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mData:[B

    const-string v2, "ISO-8859-1"

    sget v4, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->readOneVCardFile([BLjava/lang/String;Lcom/android/vcard/VCardInterpreter;IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .line 209
    :goto_1
    if-nez v10, :cond_3

    .line 210
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mParseCompleteListener:Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;->onVCardParseComplete(ZLcom/android/vcard/VCardEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 198
    :catch_0
    move-exception v9

    .line 204
    .local v9, e:Lcom/android/vcard/exception/VCardNestedException;
    const/4 v10, 0x0

    goto :goto_1

    .line 215
    .end local v9           #e:Lcom/android/vcard/exception/VCardNestedException;
    :cond_3
    :try_start_3
    invoke-virtual {v8}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, charset:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mData:[B

    iget-object v1, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0, v1, v6, v8}, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->doActuallyReadOneVCard([BLandroid/accounts/Account;Ljava/lang/String;Lcom/android/vcard/VCardSourceDetector;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v3           #collection:Lcom/android/mms/util/VCardInterpreterCollection;
    .end local v6           #charset:Ljava/lang/String;
    .end local v7           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v8           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v10           #result:Z
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mms/ui/VCardUtils$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
