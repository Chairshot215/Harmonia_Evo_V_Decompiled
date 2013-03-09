.class Lcom/htc/preference/HtcSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "HtcSwitchPreference.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/preference/HtcSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/htc/preference/HtcSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcSwitchPreference$Listener;->this$0:Lcom/htc/preference/HtcSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/preference/HtcSwitchPreference;Lcom/htc/preference/HtcSwitchPreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcSwitchPreference$Listener;-><init>(Lcom/htc/preference/HtcSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/preference/HtcSwitchPreference$Listener;->this$0:Lcom/htc/preference/HtcSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcSwitchPreference$Listener;->this$0:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcSwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
