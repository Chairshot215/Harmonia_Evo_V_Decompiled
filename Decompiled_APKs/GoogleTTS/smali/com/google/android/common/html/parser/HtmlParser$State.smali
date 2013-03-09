.class final enum Lcom/google/android/common/html/parser/HtmlParser$State;
.super Ljava/lang/Enum;
.source "HtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/common/html/parser/HtmlParser$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/common/html/parser/HtmlParser$State;

.field public static final enum IN_CDATA:Lcom/google/android/common/html/parser/HtmlParser$State;

.field public static final enum IN_COMMENT:Lcom/google/android/common/html/parser/HtmlParser$State;

.field public static final enum IN_TAG:Lcom/google/android/common/html/parser/HtmlParser$State;

.field public static final enum IN_TEXT:Lcom/google/android/common/html/parser/HtmlParser$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/google/android/common/html/parser/HtmlParser$State;

    const-string v1, "IN_TEXT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/common/html/parser/HtmlParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/common/html/parser/HtmlParser$State;

    new-instance v0, Lcom/google/android/common/html/parser/HtmlParser$State;

    const-string v1, "IN_TAG"

    invoke-direct {v0, v1, v3}, Lcom/google/android/common/html/parser/HtmlParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/common/html/parser/HtmlParser$State;->IN_TAG:Lcom/google/android/common/html/parser/HtmlParser$State;

    new-instance v0, Lcom/google/android/common/html/parser/HtmlParser$State;

    const-string v1, "IN_COMMENT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/common/html/parser/HtmlParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/common/html/parser/HtmlParser$State;->IN_COMMENT:Lcom/google/android/common/html/parser/HtmlParser$State;

    new-instance v0, Lcom/google/android/common/html/parser/HtmlParser$State;

    const-string v1, "IN_CDATA"

    invoke-direct {v0, v1, v5}, Lcom/google/android/common/html/parser/HtmlParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/common/html/parser/HtmlParser$State;->IN_CDATA:Lcom/google/android/common/html/parser/HtmlParser$State;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/common/html/parser/HtmlParser$State;

    sget-object v1, Lcom/google/android/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/common/html/parser/HtmlParser$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/common/html/parser/HtmlParser$State;->IN_TAG:Lcom/google/android/common/html/parser/HtmlParser$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/common/html/parser/HtmlParser$State;->IN_COMMENT:Lcom/google/android/common/html/parser/HtmlParser$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/common/html/parser/HtmlParser$State;->IN_CDATA:Lcom/google/android/common/html/parser/HtmlParser$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/common/html/parser/HtmlParser$State;->$VALUES:[Lcom/google/android/common/html/parser/HtmlParser$State;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/common/html/parser/HtmlParser$State;
    .locals 1
    .parameter

    .prologue
    .line 34
    const-class v0, Lcom/google/android/common/html/parser/HtmlParser$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/html/parser/HtmlParser$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/common/html/parser/HtmlParser$State;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/common/html/parser/HtmlParser$State;->$VALUES:[Lcom/google/android/common/html/parser/HtmlParser$State;

    invoke-virtual {v0}, [Lcom/google/android/common/html/parser/HtmlParser$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/common/html/parser/HtmlParser$State;

    return-object v0
.end method
