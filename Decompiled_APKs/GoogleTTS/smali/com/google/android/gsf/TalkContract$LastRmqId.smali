.class public final Lcom/google/android/gsf/TalkContract$LastRmqId;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/gsf/TalkContract$LastRmqIdColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LastRmqId"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2490
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmq_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/TalkContract$LastRmqId;->PROJECTION:[Ljava/lang/String;

    .line 2543
    const-string v0, "content://com.google.android.providers.talk/lastRmqId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$LastRmqId;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
