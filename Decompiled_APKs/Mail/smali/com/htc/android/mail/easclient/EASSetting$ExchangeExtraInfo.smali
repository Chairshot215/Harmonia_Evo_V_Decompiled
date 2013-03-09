.class Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;
.super Ljava/lang/Object;
.source "EASSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/EASSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExchangeExtraInfo"
.end annotation


# instance fields
.field public alwaysBccSelf:I

.field public downloadMessageWhenScroll:I

.field public replyWithText:I

.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASSetting;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 127
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput v0, p0, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;->replyWithText:I

    .line 129
    iput v0, p0, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;->alwaysBccSelf:I

    .line 130
    iput v0, p0, Lcom/htc/android/mail/easclient/EASSetting$ExchangeExtraInfo;->downloadMessageWhenScroll:I

    return-void
.end method
