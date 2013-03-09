.class public final enum Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;
.super Ljava/lang/Enum;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarInputFieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

.field public static final enum SEARCHBOX:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

.field public static final enum SPINNERBOX:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 288
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    const-string v1, "SEARCHBOX"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->SEARCHBOX:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    .line 289
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    const-string v1, "SPINNERBOX"

    invoke-direct {v0, v1, v2, v4}, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->SPINNERBOX:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    .line 287
    new-array v0, v4, [Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->SEARCHBOX:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->SPINNERBOX:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->$VALUES:[Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 294
    iput p3, p0, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->value:I

    .line 295
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;
    .locals 1
    .parameter "name"

    .prologue
    .line 287
    const-class v0, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->$VALUES:[Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    invoke-virtual {v0}, [Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->value:I

    return v0
.end method
