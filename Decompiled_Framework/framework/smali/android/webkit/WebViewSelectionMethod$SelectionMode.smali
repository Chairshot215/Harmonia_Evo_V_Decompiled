.class public final enum Landroid/webkit/WebViewSelectionMethod$SelectionMode;
.super Ljava/lang/Enum;
.source "WebViewSelectionMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewSelectionMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebViewSelectionMethod$SelectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebViewSelectionMethod$SelectionMode;

.field public static final enum CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

.field public static final enum EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

.field public static final enum MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

.field public static final enum NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

.field public static final enum PEN_HIGHLIGHT:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

.field public static final enum QUICKACTION:Landroid/webkit/WebViewSelectionMethod$SelectionMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    new-instance v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    const-string v1, "CURSOR"

    invoke-direct {v0, v1, v5, v5}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    new-instance v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    const-string v1, "MOVABLE"

    invoke-direct {v0, v1, v6, v6}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    new-instance v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    const-string v1, "EXTENDABLE"

    invoke-direct {v0, v1, v7, v7}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    new-instance v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    const-string v1, "QUICKACTION"

    invoke-direct {v0, v1, v8, v8}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->QUICKACTION:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    new-instance v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    const-string v1, "PEN_HIGHLIGHT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->PEN_HIGHLIGHT:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    aput-object v1, v0, v5

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    aput-object v1, v0, v6

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    aput-object v1, v0, v7

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->QUICKACTION:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->PEN_HIGHLIGHT:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->$VALUES:[Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebViewSelectionMethod$SelectionMode;
    .locals 1

    const-class v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    return-object v0
.end method

.method public static values()[Landroid/webkit/WebViewSelectionMethod$SelectionMode;
    .locals 1

    sget-object v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->$VALUES:[Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0}, [Landroid/webkit/WebViewSelectionMethod$SelectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I

    return v0
.end method
