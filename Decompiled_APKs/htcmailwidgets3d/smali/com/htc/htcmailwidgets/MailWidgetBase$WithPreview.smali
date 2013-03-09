.class public final enum Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;
.super Ljava/lang/Enum;
.source "MailWidgetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "WithPreview"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

.field public static final enum EN_NO_PREVIEW:Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

.field public static final enum EN_WITH_PREVIEW:Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1329
    new-instance v0, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    const-string v1, "EN_NO_PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;->EN_NO_PREVIEW:Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    .line 1330
    new-instance v0, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    const-string v1, "EN_WITH_PREVIEW"

    invoke-direct {v0, v1, v3}, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;->EN_WITH_PREVIEW:Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    .line 1328
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    sget-object v1, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;->EN_NO_PREVIEW:Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;->EN_WITH_PREVIEW:Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;->$VALUES:[Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

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
    .line 1328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;
    .locals 1
    .parameter "name"

    .prologue
    .line 1328
    const-class v0, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    return-object v0
.end method

.method public static values()[Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;
    .locals 1

    .prologue
    .line 1328
    sget-object v0, Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;->$VALUES:[Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    invoke-virtual {v0}, [Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/htcmailwidgets/MailWidgetBase$WithPreview;

    return-object v0
.end method
