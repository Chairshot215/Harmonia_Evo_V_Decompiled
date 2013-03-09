.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Frequency;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frequency"
.end annotation


# static fields
.field public static final FREQUENT_LIST_URI:Landroid/net/Uri; = null

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INCOMING_CALL:I = 0x2

.field public static final INCOMING_MAIL:I = 0x6

.field public static final INCOMING_MSG:I = 0x4

.field public static final IN_COMING:I = 0x1

.field public static final KEY_DATA_ID:Ljava/lang/String; = "data_id"

.field public static final MAX_FREQUENT_LIST_LIMIT:I = 0x12

.field public static final OUTGOING_CALL:I = 0x1

.field public static final OUTGOING_MAIL:I = 0x5

.field public static final OUTGOING_MSG:I = 0x3

.field public static final OUT_GOING:I = 0x0

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final TIMES:Ljava/lang/String; = "times"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UPDATE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1297
    sget-object v0, Landroid/provider/HtcContactsContract$Frequency;->UPDATE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Frequency;->UPDATE_URI:Landroid/net/Uri;

    .line 1298
    sget-object v0, Landroid/provider/HtcContactsContract$Frequency;->FREQUENT_LIST_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Frequency;->FREQUENT_LIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBatchReset(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V
    .locals 0
    .parameter "resolver"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1342
    .local p2, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/HtcContactsContract$Frequency;->applyBatchReset(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V

    .line 1343
    return-void
.end method

.method public static markAsFromCall(Landroid/content/ContentResolver;IJJ)V
    .locals 0
    .parameter "resolver"
    .parameter "in_out"
    .parameter "dataId"
    .parameter "rawContactId"

    .prologue
    .line 1314
    invoke-static/range {p0 .. p5}, Landroid/provider/HtcContactsContract$Frequency;->markAsFromCall(Landroid/content/ContentResolver;IJJ)V

    .line 1315
    return-void
.end method

.method public static markAsFromMail(Landroid/content/ContentResolver;IJJ)V
    .locals 0
    .parameter "resolver"
    .parameter "in_out"
    .parameter "dataId"
    .parameter "rawContactId"

    .prologue
    .line 1322
    invoke-static/range {p0 .. p5}, Landroid/provider/HtcContactsContract$Frequency;->markAsFromMail(Landroid/content/ContentResolver;IJJ)V

    .line 1323
    return-void
.end method

.method public static markAsFromMsg(Landroid/content/ContentResolver;IJJ)V
    .locals 0
    .parameter "resolver"
    .parameter "in_out"
    .parameter "dataId"
    .parameter "rawContactId"

    .prologue
    .line 1318
    invoke-static/range {p0 .. p5}, Landroid/provider/HtcContactsContract$Frequency;->markAsFromMsg(Landroid/content/ContentResolver;IJJ)V

    .line 1319
    return-void
.end method

.method public static markFrquency(Landroid/content/ContentResolver;IJJ)V
    .locals 0
    .parameter "resolver"
    .parameter "type"
    .parameter "dataId"
    .parameter "rawContactId"

    .prologue
    .line 1326
    invoke-static/range {p0 .. p5}, Landroid/provider/HtcContactsContract$Frequency;->markFrquency(Landroid/content/ContentResolver;IJJ)V

    .line 1327
    return-void
.end method

.method public static resetContactForCall(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V
    .locals 0
    .parameter "resolver"
    .parameter "in_out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1330
    .local p2, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/HtcContactsContract$Frequency;->resetContactForCall(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V

    .line 1331
    return-void
.end method

.method public static resetContactForMail(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V
    .locals 0
    .parameter "resolver"
    .parameter "in_out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1338
    .local p2, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/HtcContactsContract$Frequency;->resetContactForMail(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V

    .line 1339
    return-void
.end method

.method public static resetContactForMsg(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V
    .locals 0
    .parameter "resolver"
    .parameter "in_out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1334
    .local p2, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/HtcContactsContract$Frequency;->resetContactForMsg(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V

    .line 1335
    return-void
.end method
