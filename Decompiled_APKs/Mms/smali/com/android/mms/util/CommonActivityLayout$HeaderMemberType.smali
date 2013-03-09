.class final enum Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;
.super Ljava/lang/Enum;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HeaderMemberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

.field public static final enum BUTTON:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

.field public static final enum DROP_DOWN:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

.field public static final enum FOOTER_BUTTON:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

.field public static final enum IMAGE:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

.field public static final enum INPUT_FIELD:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

.field public static final enum TEXT:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->TEXT:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    .line 273
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->IMAGE:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    .line 274
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    const-string v1, "INPUT_FIELD"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->INPUT_FIELD:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    .line 275
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    const-string v1, "DROP_DOWN"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->DROP_DOWN:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    .line 276
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    const-string v1, "FOOTER_BUTTON"

    invoke-direct {v0, v1, v7}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->FOOTER_BUTTON:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    .line 277
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    const-string v1, "BUTTON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->BUTTON:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    .line 271
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->TEXT:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->IMAGE:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->INPUT_FIELD:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->DROP_DOWN:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->FOOTER_BUTTON:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->BUTTON:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->$VALUES:[Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

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
    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;
    .locals 1
    .parameter "name"

    .prologue
    .line 271
    const-class v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->$VALUES:[Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    invoke-virtual {v0}, [Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    return-object v0
.end method
