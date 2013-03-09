.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WFootprintImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

.field public static final enum Handset:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

.field public static final enum Thumbnail:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

.field public static final enum Web:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    const-string v1, "Web"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;->Web:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    .line 220
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    const-string v1, "Handset"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;->Handset:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    .line 221
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    const-string v1, "Thumbnail"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;->Thumbnail:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    .line 218
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;->Web:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;->Handset:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;->Thumbnail:Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 218
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprintImage$WFootprintImageType;

    return-object v0
.end method
