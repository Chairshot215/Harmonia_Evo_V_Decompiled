.class public final Lcom/google/android/gsf/TalkContract$OutgoingRmq;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/gsf/TalkContract$OutgoingRmqColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutgoingRmq"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_FOR_HIGHEST_RMQ_ID:Landroid/net/Uri;

.field private static RMQ_ID_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2426
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmq_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->RMQ_ID_PROJECTION:[Ljava/lang/String;

    .line 2462
    const-string v0, "content://com.google.android.providers.talk/outgoingRmqMessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI:Landroid/net/Uri;

    .line 2468
    const-string v0, "content://com.google.android.providers.talk/outgoingHighestRmqId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI_FOR_HIGHEST_RMQ_ID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
