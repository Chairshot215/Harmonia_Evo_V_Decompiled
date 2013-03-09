.class public Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;
.super Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
.source "PushMessagingRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnregisterRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"
    .parameter "appPackage"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method
