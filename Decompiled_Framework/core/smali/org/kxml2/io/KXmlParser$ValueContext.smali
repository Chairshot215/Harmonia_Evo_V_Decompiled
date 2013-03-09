.class final enum Lorg/kxml2/io/KXmlParser$ValueContext;
.super Ljava/lang/Enum;
.source "KXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kxml2/io/KXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ValueContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/kxml2/io/KXmlParser$ValueContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/kxml2/io/KXmlParser$ValueContext;

.field public static final enum ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

.field public static final enum ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

.field public static final enum TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/kxml2/io/KXmlParser$ValueContext;

    const-string v1, "ATTRIBUTE"

    invoke-direct {v0, v1, v2}, Lorg/kxml2/io/KXmlParser$ValueContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    new-instance v0, Lorg/kxml2/io/KXmlParser$ValueContext;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lorg/kxml2/io/KXmlParser$ValueContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    new-instance v0, Lorg/kxml2/io/KXmlParser$ValueContext;

    const-string v1, "ENTITY_DECLARATION"

    invoke-direct {v0, v1, v4}, Lorg/kxml2/io/KXmlParser$ValueContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/kxml2/io/KXmlParser$ValueContext;

    sget-object v1, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    aput-object v1, v0, v2

    sget-object v1, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    aput-object v1, v0, v3

    sget-object v1, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    aput-object v1, v0, v4

    sput-object v0, Lorg/kxml2/io/KXmlParser$ValueContext;->$VALUES:[Lorg/kxml2/io/KXmlParser$ValueContext;

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

.method public static valueOf(Ljava/lang/String;)Lorg/kxml2/io/KXmlParser$ValueContext;
    .locals 1

    const-class v0, Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/kxml2/io/KXmlParser$ValueContext;

    return-object v0
.end method

.method public static values()[Lorg/kxml2/io/KXmlParser$ValueContext;
    .locals 1

    sget-object v0, Lorg/kxml2/io/KXmlParser$ValueContext;->$VALUES:[Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-virtual {v0}, [Lorg/kxml2/io/KXmlParser$ValueContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/kxml2/io/KXmlParser$ValueContext;

    return-object v0
.end method
