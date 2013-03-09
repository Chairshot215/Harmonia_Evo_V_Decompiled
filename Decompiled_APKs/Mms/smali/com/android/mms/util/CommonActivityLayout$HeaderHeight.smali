.class public final enum Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;
.super Ljava/lang/Enum;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderHeight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

.field public static final enum HEADER_MIDDLE:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

.field public static final enum HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

.field public static final enum HEADER_TALL:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const-string v1, "HEADER_SHORT"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 266
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const-string v1, "HEADER_MIDDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_MIDDLE:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 267
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const-string v1, "HEADER_TALL"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_TALL:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 264
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_MIDDLE:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_TALL:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->$VALUES:[Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

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
    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;
    .locals 1
    .parameter "name"

    .prologue
    .line 264
    const-class v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->$VALUES:[Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    invoke-virtual {v0}, [Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    return-object v0
.end method
