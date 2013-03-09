.class interface abstract Lcom/android/providers/contacts/CommonNicknameCache$NicknameLookupQuery;
.super Ljava/lang/Object;
.source "CommonNicknameCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/CommonNicknameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "NicknameLookupQuery"
.end annotation


# static fields
.field public static final CLUSTER:I = 0x0

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final TABLE:Ljava/lang/String; = "nickname_lookup"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cluster"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/CommonNicknameCache$NicknameLookupQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
