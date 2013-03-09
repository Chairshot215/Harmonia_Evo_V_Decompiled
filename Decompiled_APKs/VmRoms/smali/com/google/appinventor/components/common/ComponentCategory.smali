.class public final enum Lcom/google/appinventor/components/common/ComponentCategory;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/ComponentCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum ARRANGEMENTS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum BASIC:Lcom/google/appinventor/components/common/ComponentCategory;

.field private static final DOC_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MISC:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum OBSOLETE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "BASIC"

    const-string v2, "Basic"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->BASIC:Lcom/google/appinventor/components/common/ComponentCategory;

    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "MEDIA"

    const-string v2, "Media"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "ANIMATION"

    const-string v2, "Animation"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "SOCIAL"

    const-string v2, "Social"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "SENSORS"

    const-string v2, "Sensors"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "ARRANGEMENTS"

    const/4 v2, 0x5

    const-string v3, "Screen Arrangement"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->ARRANGEMENTS:Lcom/google/appinventor/components/common/ComponentCategory;

    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "LEGOMINDSTORMS"

    const/4 v2, 0x6

    const-string v3, "LEGO\u00ae MINDSTORMS\u00ae"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "MISC"

    const/4 v2, 0x7

    const-string v3, "Other stuff"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->MISC:Lcom/google/appinventor/components/common/ComponentCategory;

    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "EXPERIMENTAL"

    const/16 v2, 0x8

    const-string v3, "Not ready for prime time"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "OBSOLETE"

    const/16 v2, 0x9

    const-string v3, "Old stuff"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->OBSOLETE:Lcom/google/appinventor/components/common/ComponentCategory;

    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "INTERNAL"

    const/16 v2, 0xa

    const-string v3, "For internal use only"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "UNINITIALIZED"

    const/16 v2, 0xb

    const-string v3, "Uninitialized"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->BASIC:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->ARRANGEMENTS:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->MISC:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->OBSOLETE:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->$VALUES:[Lcom/google/appinventor/components/common/ComponentCategory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Basic"

    const-string v2, "basic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Media"

    const-string v2, "media"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Animation"

    const-string v2, "animation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Social"

    const-string v2, "social"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Sensors"

    const-string v2, "sensors"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Screen Arrangement"

    const-string v2, "screenarrangement"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "LEGO\u00ae MINDSTORMS\u00ae"

    const-string v2, "legomindstorms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Other stuff"

    const-string v2, "other"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Not ready for prime time"

    const-string v2, "notready"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/appinventor/components/common/ComponentCategory;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ComponentCategory;
    .locals 1

    const-class v0, Lcom/google/appinventor/components/common/ComponentCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ComponentCategory;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ComponentCategory;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->$VALUES:[Lcom/google/appinventor/components/common/ComponentCategory;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ComponentCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ComponentCategory;

    return-object v0
.end method


# virtual methods
.method public getDocName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/appinventor/components/common/ComponentCategory;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/common/ComponentCategory;->name:Ljava/lang/String;

    return-object v0
.end method
