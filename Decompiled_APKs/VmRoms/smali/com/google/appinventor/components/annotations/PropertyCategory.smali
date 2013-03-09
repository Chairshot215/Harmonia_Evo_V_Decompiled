.class public final enum Lcom/google/appinventor/components/annotations/PropertyCategory;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/annotations/PropertyCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "BEHAVIOR"

    const-string v2, "Behavior"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "APPEARANCE"

    const-string v2, "Appearance"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "DEPRECATED"

    const-string v2, "Deprecated"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "UNSET"

    const-string v2, "Unspecified"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/appinventor/components/annotations/PropertyCategory;

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->$VALUES:[Lcom/google/appinventor/components/annotations/PropertyCategory;

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

    iput-object p3, p0, Lcom/google/appinventor/components/annotations/PropertyCategory;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/annotations/PropertyCategory;
    .locals 1

    const-class v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/annotations/PropertyCategory;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->$VALUES:[Lcom/google/appinventor/components/annotations/PropertyCategory;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/annotations/PropertyCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/annotations/PropertyCategory;->name:Ljava/lang/String;

    return-object v0
.end method
