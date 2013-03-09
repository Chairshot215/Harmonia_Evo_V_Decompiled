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
