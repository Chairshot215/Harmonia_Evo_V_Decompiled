.class final enum Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MediaSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

.field public static final enum ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

.field public static final enum CONTACT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

.field public static final enum CONTENT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

.field public static final enum FILE_URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

.field public static final enum REPL_ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

.field public static final enum SDCARD:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

.field public static final enum URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    const-string v1, "ASSET"

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    const-string v1, "REPL_ASSET"

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->REPL_ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    const-string v1, "SDCARD"

    invoke-direct {v0, v1, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->SDCARD:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    const-string v1, "FILE_URL"

    invoke-direct {v0, v1, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->FILE_URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    const-string v1, "URL"

    invoke-direct {v0, v1, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    const-string v1, "CONTENT_URI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTENT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    const-string v1, "CONTACT_URI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->REPL_ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->SDCARD:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->FILE_URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTENT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->$VALUES:[Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .locals 1

    const-class v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->$VALUES:[Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    return-object v0
.end method
