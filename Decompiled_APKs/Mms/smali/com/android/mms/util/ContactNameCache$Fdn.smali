.class Lcom/android/mms/util/ContactNameCache$Fdn;
.super Ljava/lang/Object;
.source "ContactNameCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ContactNameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Fdn"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/util/ContactNameCache;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ContactNameCache;)V
    .locals 1
    .parameter

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/android/mms/util/ContactNameCache$Fdn;->this$0:Lcom/android/mms/util/ContactNameCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/util/ContactNameCache$Fdn;->name:Ljava/lang/String;

    .line 1053
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/util/ContactNameCache$Fdn;->number:Ljava/lang/String;

    return-void
.end method
