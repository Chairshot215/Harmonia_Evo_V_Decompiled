.class final enum Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;
.super Ljava/lang/Enum;
.source "SimpleVCardListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SimpleVCardListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AndCommonDataKinds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

.field public static final enum EVENT:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

.field public static final enum NICKNAME:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

.field public static final enum RELATION:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;->EVENT:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    new-instance v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    const-string v1, "NICKNAME"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;->NICKNAME:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    new-instance v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    const-string v1, "RELATION"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;->RELATION:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    sget-object v1, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;->EVENT:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;->NICKNAME:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;->RELATION:Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;->$VALUES:[Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

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
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;
    .locals 1
    .parameter "name"

    .prologue
    .line 170
    const-class v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;->$VALUES:[Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    invoke-virtual {v0}, [Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/ui/SimpleVCardListViewAdapter$AndCommonDataKinds;

    return-object v0
.end method
