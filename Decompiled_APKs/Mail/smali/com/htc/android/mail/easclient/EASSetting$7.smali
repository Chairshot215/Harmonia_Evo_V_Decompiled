.class Lcom/htc/android/mail/easclient/EASSetting$7;
.super Ljava/lang/Object;
.source "EASSetting.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASSetting;->setupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting$7;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$7;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/EASSetting;->showDialog(I)V

    .line 473
    const/4 v0, 0x1

    return v0
.end method
