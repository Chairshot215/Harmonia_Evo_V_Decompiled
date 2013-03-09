.class final enum Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;
.super Ljava/lang/Enum;
.source "EnhancerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/EnhancerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DownloadProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

.field public static final enum END:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

.field public static final enum NONE:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

.field public static final enum START:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    new-instance v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->NONE:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    .line 145
    new-instance v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->START:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    .line 146
    new-instance v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    const-string v1, "END"

    invoke-direct {v0, v1, v4}, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->END:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    sget-object v1, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->NONE:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->START:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->END:Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->$VALUES:[Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

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
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;
    .locals 1
    .parameter "name"

    .prologue
    .line 143
    const-class v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    return-object v0
.end method

.method public static values()[Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->$VALUES:[Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    invoke-virtual {v0}, [Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/musicenhancer/EnhancerService$DownloadProcess;

    return-object v0
.end method
