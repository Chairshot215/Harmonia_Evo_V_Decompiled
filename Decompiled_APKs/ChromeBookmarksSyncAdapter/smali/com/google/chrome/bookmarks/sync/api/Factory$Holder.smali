.class Lcom/google/chrome/bookmarks/sync/api/Factory$Holder;
.super Ljava/lang/Object;
.source "Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/chrome/bookmarks/sync/api/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/google/chrome/bookmarks/sync/api/Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/Factory;-><init>(Lcom/google/chrome/bookmarks/sync/api/Factory$1;)V

    sput-object v0, Lcom/google/chrome/bookmarks/sync/api/Factory$Holder;->sInstance:Lcom/google/chrome/bookmarks/sync/api/Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/chrome/bookmarks/sync/api/Factory;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/chrome/bookmarks/sync/api/Factory$Holder;->sInstance:Lcom/google/chrome/bookmarks/sync/api/Factory;

    return-object v0
.end method
