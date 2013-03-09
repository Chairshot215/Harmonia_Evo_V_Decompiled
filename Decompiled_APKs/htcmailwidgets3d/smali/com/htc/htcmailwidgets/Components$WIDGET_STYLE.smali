.class public final enum Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;
.super Ljava/lang/Enum;
.source "Components.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/Components;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WIDGET_STYLE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

.field public static final enum EN_LIST:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

.field public static final enum EN_NONE:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

.field public static final enum EN_PAPER:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

.field public static final enum EN_SUMMARY:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 910
    new-instance v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    const-string v1, "EN_PAPER"

    invoke-direct {v0, v1, v2}, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_PAPER:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    .line 911
    new-instance v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    const-string v1, "EN_SUMMARY"

    invoke-direct {v0, v1, v3}, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_SUMMARY:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    .line 912
    new-instance v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    const-string v1, "EN_LIST"

    invoke-direct {v0, v1, v4}, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_LIST:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    .line 913
    new-instance v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    const-string v1, "EN_NONE"

    invoke-direct {v0, v1, v5}, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_NONE:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    .line 909
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_PAPER:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_SUMMARY:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_LIST:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->EN_NONE:Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->$VALUES:[Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

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
    .line 909
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;
    .locals 1
    .parameter "name"

    .prologue
    .line 909
    const-class v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    return-object v0
.end method

.method public static values()[Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;
    .locals 1

    .prologue
    .line 909
    sget-object v0, Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->$VALUES:[Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    invoke-virtual {v0}, [Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/htcmailwidgets/Components$WIDGET_STYLE;

    return-object v0
.end method
