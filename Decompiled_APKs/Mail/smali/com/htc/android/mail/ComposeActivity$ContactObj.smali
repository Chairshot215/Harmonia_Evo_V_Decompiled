.class Lcom/htc/android/mail/ComposeActivity$ContactObj;
.super Ljava/lang/Object;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactObj"
.end annotation


# instance fields
.field addr_:Ljava/lang/String;

.field id_:I

.field name_:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$ContactObj;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ComposeActivity$ContactObj;-><init>(Lcom/htc/android/mail/ComposeActivity;)V

    return-void
.end method
