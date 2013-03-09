.class Lcom/htc/android/mail/ReadScreen$ContactObj;
.super Ljava/lang/Object;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactObj"
.end annotation


# instance fields
.field addr_:Ljava/lang/String;

.field id_:I

.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$ContactObj;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
