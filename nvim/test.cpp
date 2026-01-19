class Application
{
};

namespace Core
{

	Application::Application()
	{
		CORE_PROFILE_FUNCTION();
		CORE_ASSERT(!s_Instance, "Application already exists")
		s_Instance = this;
		m_Window = std::unique_ptr<Window>(Window::Create());
		CORE_ASSERT(m_Window != nullptr, "Window is a nullptr");

		m_Window->SetEventCallback(std::bind(&Application::OnEvent, this, std::placeholders::_1));

		Renderer::Init();

		m_ImGuiLayer = new ImGuiLayer();
		PushOverlay(m_ImGuiLayer);
	}
