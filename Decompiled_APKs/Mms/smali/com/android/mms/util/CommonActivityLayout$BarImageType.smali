.class public final enum Lcom/android/mms/util/CommonActivityLayout$BarImageType;
.super Ljava/lang/Enum;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/util/CommonActivityLayout$BarImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/util/CommonActivityLayout$BarImageType;

.field public static final enum BUTTON:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

.field public static final enum FRAME:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

.field public static final enum LABEL:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

.field public static final enum QUICK_CONTACT:Lcom/android/mms/util/CommonActivityLayout$BarImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    const-string v1, "LABEL"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/util/CommonActivityLayout$BarImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->LABEL:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    .line 282
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    const-string v1, "BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/util/CommonActivityLayout$BarImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->BUTTON:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    .line 283
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    const-string v1, "FRAME"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/util/CommonActivityLayout$BarImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->FRAME:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    .line 284
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    const-string v1, "QUICK_CONTACT"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/util/CommonActivityLayout$BarImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->QUICK_CONTACT:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    .line 280
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->LABEL:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->BUTTON:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->FRAME:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->QUICK_CONTACT:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->$VALUES:[Lcom/android/mms/util/CommonActivityLayout$BarImageType;

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
    .line 280
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/util/CommonActivityLayout$BarImageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 280
    const-class v0, Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/util/CommonActivityLayout$BarImageType;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->$VALUES:[Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    invoke-virtual {v0}, [Lcom/android/mms/util/CommonActivityLayout$BarImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    return-object v0
.end method
