.class public final enum Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;
.super Ljava/lang/Enum;
.source "HtcWrapWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/webkit/HtcWrapWebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

.field public static final enum EMAIL_LARGER:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

.field public static final enum EMAIL_LARGEST:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

.field public static final enum EMAIL_MEDIUM:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

.field public static final enum EMAIL_SMALLER:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

.field public static final enum EMAIL_SMALLEST:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

.field public static final enum LARGER:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

.field public static final enum LARGEST:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

.field public static final enum NORMAL:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

.field public static final enum SMALLER:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

.field public static final enum SMALLEST:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    const-string v1, "SMALLEST"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->SMALLEST:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    .line 11
    new-instance v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    const-string v1, "SMALLER"

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->SMALLER:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    .line 12
    new-instance v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    const-string v1, "NORMAL"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->NORMAL:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    .line 13
    new-instance v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    const-string v1, "LARGER"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->LARGER:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    .line 14
    new-instance v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    const-string v1, "LARGEST"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v8, v2}, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->LARGEST:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    .line 17
    new-instance v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    const-string v1, "EMAIL_SMALLEST"

    const/4 v2, 0x5

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->EMAIL_SMALLEST:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    .line 18
    new-instance v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    const-string v1, "EMAIL_SMALLER"

    const/4 v2, 0x6

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->EMAIL_SMALLER:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    .line 19
    new-instance v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    const-string v1, "EMAIL_MEDIUM"

    const/4 v2, 0x7

    const/16 v3, 0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->EMAIL_MEDIUM:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    .line 20
    new-instance v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    const-string v1, "EMAIL_LARGER"

    const/16 v2, 0x8

    const/16 v3, 0x8c

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->EMAIL_LARGER:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    .line 21
    new-instance v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    const-string v1, "EMAIL_LARGEST"

    const/16 v2, 0x9

    const/16 v3, 0xa0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->EMAIL_LARGEST:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    .line 9
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    sget-object v1, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->SMALLEST:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->SMALLER:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->NORMAL:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->LARGER:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->LARGEST:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->EMAIL_SMALLEST:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->EMAIL_SMALLER:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->EMAIL_MEDIUM:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->EMAIL_LARGER:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->EMAIL_LARGEST:Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->$VALUES:[Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->value:I

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    return-object v0
.end method

.method public static values()[Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->$VALUES:[Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    invoke-virtual {v0}, [Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/wrap/android/webkit/HtcWrapWebSettings$TextSize;

    return-object v0
.end method
