.class public final enum Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;
.super Ljava/lang/Enum;
.source "StorageStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

.field public static final enum CUSTOMIZE_RES:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

.field public static final enum EXTERNAL:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

.field public static final enum PHONE:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

.field public static final enum UNKNOW:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->EXTERNAL:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    .line 9
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v3}, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->PHONE:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    .line 10
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    const-string v1, "CUSTOMIZE_RES"

    invoke-direct {v0, v1, v4}, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->CUSTOMIZE_RES:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    .line 11
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v5}, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->UNKNOW:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    sget-object v1, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->EXTERNAL:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->PHONE:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->CUSTOMIZE_RES:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->UNKNOW:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->$VALUES:[Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    return-object v0
.end method

.method public static values()[Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->$VALUES:[Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    invoke-virtual {v0}, [Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    return-object v0
.end method
