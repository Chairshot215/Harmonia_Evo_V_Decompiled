.class Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;->this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;-><init>(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;->this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->sendAccessibilityEvent(I)V

    return-void
.end method
