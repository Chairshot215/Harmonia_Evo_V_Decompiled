.class Lcom/android/browser/preferences/GeneralPreferencesFragment$1;
.super Ljava/lang/Object;
.source "GeneralPreferencesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/preferences/GeneralPreferencesFragment;->promptForHomepage(Landroid/preference/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;


# direct methods
.method constructor <init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$1;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 142
    return-void
.end method
