.class public Lcom/google/android/gsf/GoogleLoginServiceConstants;
.super Ljava/lang/Object;
.source "GoogleLoginServiceConstants.java"


# static fields
.field public static final SERVICE_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gsf.action.GET_GLS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/GoogleLoginServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static featureForService(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "service"

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
