.class final enum Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;
.super Ljava/lang/Enum;
.source "WebHistoryRepositoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HistoryTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

.field public static final enum INSERT_TIME:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

.field public static final enum QUERY:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

.field public static final enum QUERY_LOWER:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 370
    new-instance v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    const-string v1, "QUERY_LOWER"

    const-string v2, "query_lower"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->QUERY_LOWER:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    .line 371
    new-instance v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    const-string v1, "QUERY"

    const-string v2, "query"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->QUERY:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    .line 372
    new-instance v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    const-string v1, "INSERT_TIME"

    const-string v2, "insert_time"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->INSERT_TIME:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    .line 369
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    sget-object v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->QUERY_LOWER:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->QUERY:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->INSERT_TIME:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->$VALUES:[Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 375
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 376
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->mName:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;
    .locals 1
    .parameter

    .prologue
    .line 369
    const-class v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    return-object v0
.end method

.method public static values()[Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->$VALUES:[Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v0}, [Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->mName:Ljava/lang/String;

    return-object v0
.end method
